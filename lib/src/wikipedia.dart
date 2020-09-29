import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wiki_search/src/model/wikiimage.dart';

import 'model/wikipage.dart';

const baseUrl = 'https://en.wikipedia.org/w/api.php';

final dioProvider = Provider((ref) => Dio());

final repositoryProvider = Provider<WikipediaRepository>(
  (ref) => WikipediaRepositoryImpl(ref.read)
);

abstract class WikipediaRepository {
  Future<List<WikiPage>> search({String searchTerm, CancelToken cancelToken});
  Future<List<WikiImage>> getPageImages(String title);
}

class WikipediaRepositoryImpl implements WikipediaRepository {
  WikipediaRepositoryImpl(
    this._read,
  );
  final Reader _read;

  @override
  Future<List<WikiPage>> search({
    // @required int offset,
    // int limit,
    String searchTerm,
    CancelToken cancelToken,
  }) async {
    final cleanSearchTerm = searchTerm?.trim();
    if (cleanSearchTerm.length == 0) {
      return [];
    }
    try {
      final response = await _get(
        queryParameters: <String, Object>{
          'action': 'opensearch',
          'namespace': '0',
          'search': cleanSearchTerm,
          'format': 'json',
          'limit': 10,
        }
      );
      print(response);
      List<WikiPage> pages  = await _parseOpenSearchResponse(response);
      return pages;
    } catch (e) {
      print(e);
    }
  }

  Future<List<WikiPage>> _parseOpenSearchResponse(Response<dynamic> queryResponse) async {
    List<dynamic> titles = queryResponse.data[1];
    List<dynamic> description = queryResponse.data[2];
    List<dynamic> links = queryResponse.data[3];
    List<WikiPage> pages = [];
    for (int i = 0; i < titles.length; i++) {
      List<WikiImage> images = await getPageImages(titles.elementAt(i));
      pages.add(
        WikiPage(
          title: titles.elementAt(i),
          description: description.elementAt(i),
          pageUrl: links.elementAt(i),
          images: images,
        )
        );
    }
    return pages;
  }

  Future<Response> _get(
  {
    Map<String, Object> queryParameters,
    CancelToken cancelToken,
  }) async {
    return _read(dioProvider).get(
      baseUrl,
      cancelToken: cancelToken,
      queryParameters: queryParameters,
    );
  }

  @override
  Future<List<WikiImage>> getPageImages(String title) async {
    final response = await _get(
      queryParameters: <String, Object>{
        'action': 'query',
        'titles': title,
        'prop': 'images',
        'imlimit': 50,
        'format': 'json',
        'aimime': 'jpg',
      }
    );
    return _parsePageImagesResponse(response);
  }

  List<WikiImage> _parsePageImagesResponse(Response<dynamic> queryResponse) {
    final dynamic query = queryResponse.data['query'];
    final Map<String, dynamic> pageInfo = query['pages'];
    List<dynamic> pageInfoJSONLIst = pageInfo.values.toList();
    Map<String, dynamic> images = pageInfoJSONLIst?.elementAt(0);

    if (images != null) {
      List<dynamic> imagesList = images['images'];
      return imagesList.map((dynamic images) {
        return WikiImage.fromJson(images);
      }).toList();
    }
    return [];
  }
}
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:wiki_search/src/model/wikiimage.dart';

import '../wikipedia.dart';

const double imageSize = 100;

final imageUrlProvider = FutureProvider.autoDispose.family((ref, imageTitle) async {
  final repository = ref.read(repositoryProvider);
  return repository.getImageUrl(imageTitle);
});

class ImageThumb extends ConsumerWidget {
  final WikiImage wikiImage;
  const ImageThumb({@required this.wikiImage, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final urlProvider = watch(imageUrlProvider(wikiImage.title));
    return SizedBox(
      width: imageSize,
      height: imageSize,
      child: urlProvider.maybeWhen(
        data: (value) => CachedNetworkImage(imageUrl: value),
        orElse: () => Container(color: Colors.black12),
      ),
    );
  }
}
import 'package:freezed_annotation/freezed_annotation.dart';

import 'wikiimage.dart';

part 'wikipage.freezed.dart';

@freezed
abstract class WikiPage with _$WikiPage {
  factory WikiPage({
    String title,
    String description,
    String pageUrl,
    List<WikiImage> images,
  }) = _WikiPage;
}
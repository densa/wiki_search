import 'package:freezed_annotation/freezed_annotation.dart';

part 'wikiimage.freezed.dart';
part 'wikiimage.g.dart';

@freezed
abstract class WikiImage with _$WikiImage {
  factory WikiImage({
    String title,
    String url,
  }) = _WikiImage;

  factory WikiImage.fromJson(Map<String, dynamic> json) => _$WikiImageFromJson(json);
}
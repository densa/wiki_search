// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'wikiimage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WikiImage _$WikiImageFromJson(Map<String, dynamic> json) {
  return _WikiImage.fromJson(json);
}

/// @nodoc
class _$WikiImageTearOff {
  const _$WikiImageTearOff();

// ignore: unused_element
  _WikiImage call({String title, String url}) {
    return _WikiImage(
      title: title,
      url: url,
    );
  }

// ignore: unused_element
  WikiImage fromJson(Map<String, Object> json) {
    return WikiImage.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WikiImage = _$WikiImageTearOff();

/// @nodoc
mixin _$WikiImage {
  String get title;
  String get url;

  Map<String, dynamic> toJson();
  $WikiImageCopyWith<WikiImage> get copyWith;
}

/// @nodoc
abstract class $WikiImageCopyWith<$Res> {
  factory $WikiImageCopyWith(WikiImage value, $Res Function(WikiImage) then) =
      _$WikiImageCopyWithImpl<$Res>;
  $Res call({String title, String url});
}

/// @nodoc
class _$WikiImageCopyWithImpl<$Res> implements $WikiImageCopyWith<$Res> {
  _$WikiImageCopyWithImpl(this._value, this._then);

  final WikiImage _value;
  // ignore: unused_field
  final $Res Function(WikiImage) _then;

  @override
  $Res call({
    Object title = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
abstract class _$WikiImageCopyWith<$Res> implements $WikiImageCopyWith<$Res> {
  factory _$WikiImageCopyWith(
          _WikiImage value, $Res Function(_WikiImage) then) =
      __$WikiImageCopyWithImpl<$Res>;
  @override
  $Res call({String title, String url});
}

/// @nodoc
class __$WikiImageCopyWithImpl<$Res> extends _$WikiImageCopyWithImpl<$Res>
    implements _$WikiImageCopyWith<$Res> {
  __$WikiImageCopyWithImpl(_WikiImage _value, $Res Function(_WikiImage) _then)
      : super(_value, (v) => _then(v as _WikiImage));

  @override
  _WikiImage get _value => super._value as _WikiImage;

  @override
  $Res call({
    Object title = freezed,
    Object url = freezed,
  }) {
    return _then(_WikiImage(
      title: title == freezed ? _value.title : title as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WikiImage implements _WikiImage {
  _$_WikiImage({this.title, this.url});

  factory _$_WikiImage.fromJson(Map<String, dynamic> json) =>
      _$_$_WikiImageFromJson(json);

  @override
  final String title;
  @override
  final String url;

  @override
  String toString() {
    return 'WikiImage(title: $title, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WikiImage &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(url);

  @override
  _$WikiImageCopyWith<_WikiImage> get copyWith =>
      __$WikiImageCopyWithImpl<_WikiImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WikiImageToJson(this);
  }
}

abstract class _WikiImage implements WikiImage {
  factory _WikiImage({String title, String url}) = _$_WikiImage;

  factory _WikiImage.fromJson(Map<String, dynamic> json) =
      _$_WikiImage.fromJson;

  @override
  String get title;
  @override
  String get url;
  @override
  _$WikiImageCopyWith<_WikiImage> get copyWith;
}

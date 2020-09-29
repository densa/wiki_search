// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'wikipage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WikiPageTearOff {
  const _$WikiPageTearOff();

// ignore: unused_element
  _WikiPage call(
      {String title,
      String description,
      String pageUrl,
      List<WikiImage> images}) {
    return _WikiPage(
      title: title,
      description: description,
      pageUrl: pageUrl,
      images: images,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WikiPage = _$WikiPageTearOff();

/// @nodoc
mixin _$WikiPage {
  String get title;
  String get description;
  String get pageUrl;
  List<WikiImage> get images;

  $WikiPageCopyWith<WikiPage> get copyWith;
}

/// @nodoc
abstract class $WikiPageCopyWith<$Res> {
  factory $WikiPageCopyWith(WikiPage value, $Res Function(WikiPage) then) =
      _$WikiPageCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      String pageUrl,
      List<WikiImage> images});
}

/// @nodoc
class _$WikiPageCopyWithImpl<$Res> implements $WikiPageCopyWith<$Res> {
  _$WikiPageCopyWithImpl(this._value, this._then);

  final WikiPage _value;
  // ignore: unused_field
  final $Res Function(WikiPage) _then;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object pageUrl = freezed,
    Object images = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      pageUrl: pageUrl == freezed ? _value.pageUrl : pageUrl as String,
      images: images == freezed ? _value.images : images as List<WikiImage>,
    ));
  }
}

/// @nodoc
abstract class _$WikiPageCopyWith<$Res> implements $WikiPageCopyWith<$Res> {
  factory _$WikiPageCopyWith(_WikiPage value, $Res Function(_WikiPage) then) =
      __$WikiPageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      String pageUrl,
      List<WikiImage> images});
}

/// @nodoc
class __$WikiPageCopyWithImpl<$Res> extends _$WikiPageCopyWithImpl<$Res>
    implements _$WikiPageCopyWith<$Res> {
  __$WikiPageCopyWithImpl(_WikiPage _value, $Res Function(_WikiPage) _then)
      : super(_value, (v) => _then(v as _WikiPage));

  @override
  _WikiPage get _value => super._value as _WikiPage;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object pageUrl = freezed,
    Object images = freezed,
  }) {
    return _then(_WikiPage(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      pageUrl: pageUrl == freezed ? _value.pageUrl : pageUrl as String,
      images: images == freezed ? _value.images : images as List<WikiImage>,
    ));
  }
}

/// @nodoc
class _$_WikiPage implements _WikiPage {
  _$_WikiPage({this.title, this.description, this.pageUrl, this.images});

  @override
  final String title;
  @override
  final String description;
  @override
  final String pageUrl;
  @override
  final List<WikiImage> images;

  @override
  String toString() {
    return 'WikiPage(title: $title, description: $description, pageUrl: $pageUrl, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WikiPage &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.pageUrl, pageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.pageUrl, pageUrl)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(pageUrl) ^
      const DeepCollectionEquality().hash(images);

  @override
  _$WikiPageCopyWith<_WikiPage> get copyWith =>
      __$WikiPageCopyWithImpl<_WikiPage>(this, _$identity);
}

abstract class _WikiPage implements WikiPage {
  factory _WikiPage(
      {String title,
      String description,
      String pageUrl,
      List<WikiImage> images}) = _$_WikiPage;

  @override
  String get title;
  @override
  String get description;
  @override
  String get pageUrl;
  @override
  List<WikiImage> get images;
  @override
  _$WikiPageCopyWith<_WikiPage> get copyWith;
}

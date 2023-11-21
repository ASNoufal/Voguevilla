// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CarouselApi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarouselApi _$CarouselApiFromJson(Map<String, dynamic> json) {
  return _CarouselApi.fromJson(json);
}

/// @nodoc
mixin _$CarouselApi {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  double get discountPercentage => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  List<dynamic> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarouselApiCopyWith<CarouselApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarouselApiCopyWith<$Res> {
  factory $CarouselApiCopyWith(
          CarouselApi value, $Res Function(CarouselApi) then) =
      _$CarouselApiCopyWithImpl<$Res, CarouselApi>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int price,
      double discountPercentage,
      double rating,
      String category,
      String thumbnail,
      List<dynamic> images});
}

/// @nodoc
class _$CarouselApiCopyWithImpl<$Res, $Val extends CarouselApi>
    implements $CarouselApiCopyWith<$Res> {
  _$CarouselApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? category = null,
    Object? thumbnail = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarouselApiImplCopyWith<$Res>
    implements $CarouselApiCopyWith<$Res> {
  factory _$$CarouselApiImplCopyWith(
          _$CarouselApiImpl value, $Res Function(_$CarouselApiImpl) then) =
      __$$CarouselApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int price,
      double discountPercentage,
      double rating,
      String category,
      String thumbnail,
      List<dynamic> images});
}

/// @nodoc
class __$$CarouselApiImplCopyWithImpl<$Res>
    extends _$CarouselApiCopyWithImpl<$Res, _$CarouselApiImpl>
    implements _$$CarouselApiImplCopyWith<$Res> {
  __$$CarouselApiImplCopyWithImpl(
      _$CarouselApiImpl _value, $Res Function(_$CarouselApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? category = null,
    Object? thumbnail = null,
    Object? images = null,
  }) {
    return _then(_$CarouselApiImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarouselApiImpl implements _CarouselApi {
  const _$CarouselApiImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.discountPercentage,
      required this.rating,
      required this.category,
      required this.thumbnail,
      required final List<dynamic> images})
      : _images = images;

  factory _$CarouselApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarouselApiImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int price;
  @override
  final double discountPercentage;
  @override
  final double rating;
  @override
  final String category;
  @override
  final String thumbnail;
  final List<dynamic> _images;
  @override
  List<dynamic> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'CarouselApi(id: $id, title: $title, description: $description, price: $price, discountPercentage: $discountPercentage, rating: $rating, category: $category, thumbnail: $thumbnail, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarouselApiImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      price,
      discountPercentage,
      rating,
      category,
      thumbnail,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarouselApiImplCopyWith<_$CarouselApiImpl> get copyWith =>
      __$$CarouselApiImplCopyWithImpl<_$CarouselApiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarouselApiImplToJson(
      this,
    );
  }
}

abstract class _CarouselApi implements CarouselApi {
  const factory _CarouselApi(
      {required final int id,
      required final String title,
      required final String description,
      required final int price,
      required final double discountPercentage,
      required final double rating,
      required final String category,
      required final String thumbnail,
      required final List<dynamic> images}) = _$CarouselApiImpl;

  factory _CarouselApi.fromJson(Map<String, dynamic> json) =
      _$CarouselApiImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get price;
  @override
  double get discountPercentage;
  @override
  double get rating;
  @override
  String get category;
  @override
  String get thumbnail;
  @override
  List<dynamic> get images;
  @override
  @JsonKey(ignore: true)
  _$$CarouselApiImplCopyWith<_$CarouselApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

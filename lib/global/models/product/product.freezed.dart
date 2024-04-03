// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'discountPercentage')
  double get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  int get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  String get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail')
  String get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'discountPercentage') double discountPercentage,
      @JsonKey(name: 'rating') double rating,
      @JsonKey(name: 'stock') int stock,
      @JsonKey(name: 'brand') String brand,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'thumbnail') String thumbnail,
      @JsonKey(name: 'images') List<String> images});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

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
    Object? stock = null,
    Object? brand = null,
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
              as double,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'discountPercentage') double discountPercentage,
      @JsonKey(name: 'rating') double rating,
      @JsonKey(name: 'stock') int stock,
      @JsonKey(name: 'brand') String brand,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'thumbnail') String thumbnail,
      @JsonKey(name: 'images') List<String> images});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
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
    Object? stock = null,
    Object? brand = null,
    Object? category = null,
    Object? thumbnail = null,
    Object? images = null,
  }) {
    return _then(_$ProductImpl(
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
              as double,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'price') this.price = 0.00,
      @JsonKey(name: 'discountPercentage') this.discountPercentage = 0.00,
      @JsonKey(name: 'rating') this.rating = 0.00,
      @JsonKey(name: 'stock') this.stock = 0,
      @JsonKey(name: 'brand') this.brand = '',
      @JsonKey(name: 'category') this.category = '',
      @JsonKey(name: 'thumbnail') this.thumbnail = '',
      @JsonKey(name: 'images') final List<String> images = const []})
      : _images = images;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'discountPercentage')
  final double discountPercentage;
  @override
  @JsonKey(name: 'rating')
  final double rating;
  @override
  @JsonKey(name: 'stock')
  final int stock;
  @override
  @JsonKey(name: 'brand')
  final String brand;
  @override
  @JsonKey(name: 'category')
  final String category;
  @override
  @JsonKey(name: 'thumbnail')
  final String thumbnail;
  final List<String> _images;
  @override
  @JsonKey(name: 'images')
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'Product(id: $id, title: $title, description: $description, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, brand: $brand, category: $category, thumbnail: $thumbnail, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.brand, brand) || other.brand == brand) &&
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
      stock,
      brand,
      category,
      thumbnail,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  factory _Product(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'title') final String title,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: 'price') final double price,
      @JsonKey(name: 'discountPercentage') final double discountPercentage,
      @JsonKey(name: 'rating') final double rating,
      @JsonKey(name: 'stock') final int stock,
      @JsonKey(name: 'brand') final String brand,
      @JsonKey(name: 'category') final String category,
      @JsonKey(name: 'thumbnail') final String thumbnail,
      @JsonKey(name: 'images') final List<String> images}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'price')
  double get price;
  @override
  @JsonKey(name: 'discountPercentage')
  double get discountPercentage;
  @override
  @JsonKey(name: 'rating')
  double get rating;
  @override
  @JsonKey(name: 'stock')
  int get stock;
  @override
  @JsonKey(name: 'brand')
  String get brand;
  @override
  @JsonKey(name: 'category')
  String get category;
  @override
  @JsonKey(name: 'thumbnail')
  String get thumbnail;
  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

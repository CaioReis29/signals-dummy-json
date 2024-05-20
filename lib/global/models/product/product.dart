
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  @JsonSerializable(explicitToJson: true)
  factory Product({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'price') @Default(0.00) double price,
    @JsonKey(name: 'discountPercentage') @Default(0.00) double discountPercentage,
    @JsonKey(name: 'rating') @Default(0.00) double rating,
    @JsonKey(name: 'stock') @Default(0) int stock,
    @JsonKey(name: 'brand') @Default('') String brand,
    @JsonKey(name: 'category') @Default('') String category,
    @JsonKey(name: 'thumbnail') @Default('') String thumbnail,
    @JsonKey(name: 'images') @Default([]) List<String> images,
  }) = _Product;
  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

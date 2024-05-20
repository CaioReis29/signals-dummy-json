import 'package:json_annotation/json_annotation.dart';

part 'list_response.g.dart';

@JsonSerializable(createToJson: false, genericArgumentFactories: true, fieldRename: FieldRename.snake)
class ListResponse<T> {
  final int? total;
  final List<T>? products;
  final int? skip;
  final int? limit;

  ListResponse({
    required this.total,
    required this.products,
    required this.skip,
    required this.limit,
  });

  @override
  String toString() {
    return 'ListResponse<$T>{total: $total, products: $products, skip: $skip, totalResults: $limit}';
  }

  @override
  factory ListResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$ListResponseFromJson(json, fromJsonT);
  }
}
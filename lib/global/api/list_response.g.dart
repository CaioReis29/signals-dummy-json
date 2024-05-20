// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListResponse<T> _$ListResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ListResponse<T>(
      total: json['total'] as int?,
      products: (json['products'] as List<dynamic>?)?.map(fromJsonT).toList(),
      skip: json['skip'] as int?,
      limit: json['limit'] as int?,
    );

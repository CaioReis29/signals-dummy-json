import 'package:dummy_project/global/api/api_client.dart';
import 'package:dummy_project/global/api/api_response.dart';
import 'package:dummy_project/global/api/list_response.dart';
import 'package:dummy_project/global/constants/api_constants.dart';
import 'package:dummy_project/global/datasource/remote_data_source/remote_data_source.dart';
import 'package:dummy_project/global/enums/method_type.dart';
import 'package:dummy_project/global/models/product/product.dart';

class RemoteDataSourceImpl implements RemoteDataSource{
  final ApiClient client;

  RemoteDataSourceImpl({required this.client});

  @override
  Future<ApiResponse<ListResponse<Product>>> loadProducts() {
    return client.request(
      path: ApiConstants.productsPath, 
      method: MethodType.get,
      fromJson: (json) => ListResponse<Product>.fromJson(json, (json) => Product.fromJson(json as Map<String, dynamic>)),
    );
  }
  
  @override
  Future<ApiResponse<ListResponse<Product>>> loadProductsByCategory(String category) {
    return client.request(
      path: "${ApiConstants.productsPath}${ApiConstants.categoryPath}$category", 
      method: MethodType.get,
      fromJson: (json) => ListResponse<Product>.fromJson(json, (json) => Product.fromJson(json as Map<String, dynamic>)),
    );
  }
  
  @override
  Future<ApiResponse<Product>> loadSingleProduct(int id) {
    return client.request(
      path: "${ApiConstants.productsPath}$id", 
      method: MethodType.get,
      fromJson: (json) => Product.fromJson(json),
    );
  }
}
import 'package:dummy_project/global/api/api_response.dart';
import 'package:dummy_project/global/api/list_response.dart';
import 'package:dummy_project/global/models/product/product.dart';

abstract class RemoteDataSource {
  Future<ApiResponse<ListResponse<Product>>> loadProducts();

  Future<ApiResponse<ListResponse<Product>>> loadProductsByCategory(String categorie);

  Future<ApiResponse<Product>> loadSingleProduct(int id);
}
import 'package:dio/dio.dart';
import 'package:dummy_project/global/constants/api_constants.dart';
import 'package:dummy_project/global/models/product/product.dart';
import 'package:dummy_project/global/repositories/products_repository/products_repository.dart';

class ProductsRepositoryImp implements ProductsRepository{
  final dio = Dio();
  
  @override
  Future<List<Product>> loadProducts() async{
    final response = await dio.get(ApiConstants.productsUrl);

    if(response.statusCode == 200 && response.data != null) {
      final List<dynamic> data = response.data['products'];
      final List<Product> products = data.map((product) => Product.fromJson(product)).toList();
      return products;
    } else {
      throw Exception();
    }
  }
}
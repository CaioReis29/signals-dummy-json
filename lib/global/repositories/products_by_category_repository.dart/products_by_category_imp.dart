
import 'package:dio/dio.dart';
import 'package:dummy_project/global/constants/api_constants.dart';
import 'package:dummy_project/global/models/product/product.dart';
import 'package:dummy_project/global/repositories/products_by_category_repository.dart/products_by_category_repository.dart';

class ProductsByCategoryImp implements ProductsByCategoryRepository{
  final dio = Dio();
  @override
  Future<List<Product>> listProductsByCategory(String categorie) async{
    final response = await dio.get("${ApiConstants.productsByCategorieUrl}/$categorie");

    if(response.statusCode == 200) {
      final List<dynamic> data = response.data["products"];
      final List<Product> products = data.map((product) => Product.fromJson(product)).toList();
      return products;
    } else {
      throw Exception();
    }
  }
}
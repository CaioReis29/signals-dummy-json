
import 'package:dio/dio.dart';
import 'package:dummy_project/global/constants/api_constants.dart';
import 'package:dummy_project/global/models/product/product.dart';
import 'package:dummy_project/global/repositories/single_product_repository/single_product_repository.dart';

class SingleProductRepositoryImp  implements SingleProductRepository{
  final dio = Dio();

  @override
  Future<Product> getSingleProduct(int id) async{
    final response = await dio.get("${ApiConstants.singleProductUrl}/$id");

    if(response.statusCode == 200) {
      Map<String, dynamic> data = response.data;
      final Product product = Product.fromJson(data);
      
      return product;
    }

    throw Exception();
  }
  
}
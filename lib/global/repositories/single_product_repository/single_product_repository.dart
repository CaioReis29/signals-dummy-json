import 'package:dummy_project/global/models/product/product.dart';

abstract class SingleProductRepository {
  Future<Product> getSingleProduct(int id);
}
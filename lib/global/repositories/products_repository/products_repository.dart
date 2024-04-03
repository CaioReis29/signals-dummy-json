import 'package:dummy_project/global/models/product/product.dart';

abstract class ProductsRepository {
  Future<List<Product>> loadProducts();
}
import 'package:dummy_project/global/models/product/product.dart';

abstract class ProductsByCategoryRepository {
  Future<List<Product>> listProductsByCategory(String categorie);
}
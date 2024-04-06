
import 'package:dummy_project/global/models/product/product.dart';
import 'package:dummy_project/global/repositories/single_product_repository/single_product_repository_imp.dart';
import 'package:signals/signals_flutter.dart';

class ProductDetailsController {
  SingleProductRepositoryImp repository;

  ProductDetailsController(this.repository);

  late final product = signal<AsyncState<Product>>(AsyncData(Product()));

  Future<void> getSingleProduct(int id) async {
    product.value = AsyncLoading();
    try {
      final productResponse = await repository.getSingleProduct(id);
      product.value = AsyncData(productResponse);
    } catch (e, s) {
      product.value = AsyncError(e, s);
    }
  }
}
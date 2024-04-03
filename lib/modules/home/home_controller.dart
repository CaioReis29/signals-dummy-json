
import 'package:dummy_project/global/models/product/product.dart';
import 'package:dummy_project/global/repositories/categories_repository/categories_repository_imp.dart';
import 'package:dummy_project/global/repositories/products_repository/products_repository_imp.dart';
import 'package:signals/signals_flutter.dart';

class HomeController {
  ProductsRepositoryImp productRepo;
  CategoriesRepositoryImp categorieRepo;

  HomeController(this.productRepo, this.categorieRepo);

  late final products = signal<AsyncState<List<Product>>>(AsyncData([]));

  late final categories = signal<AsyncState<List<String>>>(AsyncData([]));

  Future<void> loadProducts() async {
    products.value = AsyncLoading();
    try {
      final List<Product> data = await productRepo.loadProducts();
      products.value = AsyncData(data);
    } catch (e, s) {
      products.value = AsyncError(e, s);
      rethrow;
    }
  }

  Future<void> loadCategories() async {
    categories.value = AsyncLoading();
    try {
      final List<String> data = await categorieRepo.loadCategories();
      categories.value = AsyncData(data);
    } catch (e, s) {
      categories.value = AsyncError(e, s);
    }
  }
}
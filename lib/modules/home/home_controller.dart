
import 'package:dummy_project/global/models/product/product.dart';
import 'package:dummy_project/global/repositories/categories_repository/categories_repository_imp.dart';
import 'package:dummy_project/global/repositories/products_by_category_repository.dart/products_by_category_imp.dart';
import 'package:dummy_project/global/repositories/products_repository/products_repository_imp.dart';
import 'package:signals/signals_flutter.dart';

class HomeController {
  ProductsRepositoryImp productRepo;
  CategoriesRepositoryImp categorieRepo;
  ProductsByCategoryImp productsByCategoryRepo;

  HomeController(this.productRepo, this.categorieRepo, this.productsByCategoryRepo);

  late final products = signal<AsyncState<List<Product>>>(AsyncData([]));

  late final categories = signal<AsyncState<List<String>>>(AsyncData([]));

  Future<void> loadProducts() async {
    products.value = AsyncLoading();
    try {
      final List<Product> data = await productRepo.loadProducts();
      products.value = AsyncData(data);
    } catch (e, s) {
      products.value = AsyncError(e, s);
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

  Future<void> loadProductsByCategorie(String category) async {
    products.value = AsyncLoading();
    try {
      final List<Product> result = await productsByCategoryRepo.listProductsByCategory(category);
      products.value = AsyncData(result);
    } catch (e, s) {
      products.value = AsyncError(e, s);
      rethrow;
    }
  }
}
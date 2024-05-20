
import 'package:dummy_project/global/datasource/remote_data_source/remote_data_source_impl.dart';
import 'package:dummy_project/global/models/product/product.dart';
import 'package:dummy_project/global/repositories/categories_repository/categories_repository_imp.dart';
import 'package:signals/signals_flutter.dart';

class HomeController {
  CategoriesRepositoryImp categorieRepo;
  final RemoteDataSourceImpl _dataSourceImpl;

  HomeController(this.categorieRepo, this._dataSourceImpl);

  late final products = signal<AsyncState<List<Product>>>(AsyncData([]));

  late final categories = signal<AsyncState<List<String>>>(AsyncData([]));

  Future<void> loadProducts() async {
    products.value = AsyncLoading();
    try {
      final response = await _dataSourceImpl.loadProducts();
      final data = response.data!.products;

      if(data != null) products.value = AsyncData(data);

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
      final result = await _dataSourceImpl.loadProductsByCategory(category);
      final data = result.data!.products;
      if(data != null) products.value = AsyncData(data);
    } catch (e, s) {
      products.value = AsyncError(e, s);
      rethrow;
    }
  }
}
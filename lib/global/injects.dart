import 'package:dummy_project/global/repositories/categories_repository/categories_repository_imp.dart';
import 'package:dummy_project/global/repositories/products_by_category_repository.dart/products_by_category_imp.dart';
import 'package:dummy_project/global/repositories/products_repository/products_repository_imp.dart';
import 'package:dummy_project/global/repositories/single_product_repository/single_product_repository_imp.dart';
import 'package:dummy_project/global/services/auth_service/login_service_imp.dart';
import 'package:dummy_project/modules/home/home_controller.dart';
import 'package:dummy_project/modules/login/login_controller.dart';
import 'package:dummy_project/modules/product_details/product_details_controller.dart';
import 'package:get_it/get_it.dart';


GetIt inject = GetIt.instance;

Future<void> setupInjection() async {
  await inject.reset();

  inject.registerLazySingleton<LoginServiceImp>(() => LoginServiceImp());

  inject.registerLazySingleton<ProductsRepositoryImp>(() => ProductsRepositoryImp());

  inject.registerLazySingleton<CategoriesRepositoryImp>(() => CategoriesRepositoryImp());

  inject.registerLazySingleton<ProductsByCategoryImp>(() => ProductsByCategoryImp());

  inject.registerLazySingleton<SingleProductRepositoryImp>(() => SingleProductRepositoryImp());

  inject.registerSingleton<LoginController>(LoginController(inject<LoginServiceImp>()));

  inject.registerSingleton<HomeController>(HomeController(inject<ProductsRepositoryImp>(), inject<CategoriesRepositoryImp>(), inject<ProductsByCategoryImp>()));

  inject.registerSingleton<ProductDetailsController>(ProductDetailsController(inject<SingleProductRepositoryImp>())); 
}
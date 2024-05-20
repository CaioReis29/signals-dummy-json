import 'package:dummy_project/global/api/dio_client.dart';
import 'package:dummy_project/global/datasource/remote_data_source/remote_data_source_impl.dart';
import 'package:dummy_project/global/repositories/categories_repository/categories_repository_imp.dart';
import 'package:dummy_project/global/services/auth_service/login_service_imp.dart';
import 'package:dummy_project/global/services/shared_preferences_service/shared_preference_service.dart';
import 'package:dummy_project/modules/home/home_controller.dart';
import 'package:dummy_project/modules/login/login_controller.dart';
import 'package:dummy_project/modules/product_details/product_details_controller.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';


GetIt inject = GetIt.instance;

Future<void> setupInjection() async {
  await inject.reset();

  final SharedPreferences prefs = await SharedPreferences.getInstance();

  inject.registerSingleton<SharedPreferenceService>(SharedPreferenceService(prefs));

  inject.registerLazySingleton<DioClient>(() => DioClient());

  inject.registerLazySingleton<RemoteDataSourceImpl>(() => RemoteDataSourceImpl(client: inject<DioClient>()));

  inject.registerLazySingleton<LoginServiceImp>(() => LoginServiceImp());

  inject.registerLazySingleton<CategoriesRepositoryImp>(() => CategoriesRepositoryImp());

  inject.registerSingleton<LoginController>(LoginController(inject<LoginServiceImp>()));

  inject.registerSingleton<HomeController>(HomeController(inject<CategoriesRepositoryImp>(), inject<RemoteDataSourceImpl>()));

  inject.registerSingleton<ProductDetailsController>(ProductDetailsController(inject<RemoteDataSourceImpl>())); 
}
import 'package:dio/dio.dart';
import 'package:dummy_project/global/constants/api_constants.dart';
import 'package:dummy_project/global/repositories/categories_repository/categories_repository.dart';

class CategoriesRepositoryImp implements CategoriesRepository{
  @override
  Future<List<String>> loadCategories() async{
    final dio = Dio();

    final response = await dio.get(ApiConstants.categoriesUrl);

    if(response.statusCode == 200) {
      final List<dynamic> data = response.data;

      final List<String> categories = data.map((categorie) => categorie.toString()).toList();

      return categories;
    }

    throw Exception();
  }
  
}
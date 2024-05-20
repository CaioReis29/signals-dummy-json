
import 'package:dummy_project/global/datasource/remote_data_source/remote_data_source_impl.dart';
import 'package:dummy_project/global/models/product/product.dart';
import 'package:signals/signals_flutter.dart';

class ProductDetailsController {
  final RemoteDataSourceImpl _dataSourceImpl;

  ProductDetailsController(this._dataSourceImpl);

  late final product = signal<AsyncState<Product>>(AsyncData(Product()));

  Future<void> getSingleProduct(int id) async {
    product.value = AsyncLoading();
    try {
      final response = await _dataSourceImpl.loadSingleProduct(id);
      final data = response.data!;
      product.value = AsyncData(data);
    } catch (e, s) {
      product.value = AsyncError(e, s);
    }
  }
}
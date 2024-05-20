import 'package:cached_network_image/cached_network_image.dart';
import 'package:dummy_project/global/injects.dart';
import 'package:dummy_project/global/themes/app_colors.dart';
import 'package:dummy_project/global/themes/app_text_theme.dart';
import 'package:dummy_project/global/utils/format_double.dart';
import 'package:dummy_project/modules/product_details/product_details_controller.dart';
import 'package:dummy_project/modules/product_details/widgets/product_dialog.dart';
import 'package:dummy_project/modules/product_details/widgets/product_loading_state.dart';
import 'package:dummy_project/modules/product_details/widgets/product_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

final productController = inject<ProductDetailsController>();
 
 class ProductDetailsView extends StatefulWidget {
 
   const ProductDetailsView({ super.key });

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  late int id;

  bool isLiked = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    id = ModalRoute.of(context)!.settings.arguments as int;
    productController.getSingleProduct(id);
  }
    @override
    Widget build(BuildContext context) {
      final productState = productController.product.watch(context);

        return Scaffold(
            appBar: AppBar(
              leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios_new)),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: IconButton(onPressed: () => setState(() => isLiked = !isLiked), icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border, color: Colors.red, size: 30)),
            )],),
            body: Watch.builder(
              builder: (context) => productState.maybeMap(
                data: (product) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Hero(
                        tag: product.thumbnail,
                        child: CachedNetworkImage(
                          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                          imageUrl: product.thumbnail,
                          fit: BoxFit.fill,
                          height: MediaQuery.sizeOf(context).height * 0.3,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.5,
                            child: Text(product.title, style: AppTextStyle.robotoW600s20, maxLines: 2),
                          ),
                          Text(FormatDouble.priceToCurrency(product.price), style: AppTextStyle.robotoW800s20.copyWith(color: AppColors.primary)),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Align(alignment: Alignment.centerLeft, child: Text("Images:", style: AppTextStyle.robotoW600s20)),
                      ProductDialog(product: product),
                      const SizedBox(height: 20),
                      ProductTabBar(product: product),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                loading: () => const ProductLoadingState(),
                error: (error, stackTcace) => Text(error.toString()),
                orElse: () => Container(),
              ),
            ),
      );
   }
}
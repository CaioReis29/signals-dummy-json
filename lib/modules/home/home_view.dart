import 'package:cached_network_image/cached_network_image.dart';
import 'package:dummy_project/global/components/dm_button.dart';
import 'package:dummy_project/global/injects.dart';
import 'package:dummy_project/global/themes/app_colors.dart';
import 'package:dummy_project/global/themes/app_text_theme.dart';
import 'package:dummy_project/global/utils/format_double.dart';
import 'package:dummy_project/modules/home/home_controller.dart';
import 'package:dummy_project/modules/home/widgets/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

final controller = inject<HomeController>();

class HomeView extends StatefulWidget {

  const HomeView({ super.key });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin{

  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    initializeData();
  }
  
  void initializeData() {
  controller.loadProducts();
  controller.loadCategories();
}
   @override
   Widget build(BuildContext context) {
    final productState = controller.products.watch(context);
    
    final categorieState = controller.categories.watch(context);

    var scaffoldKey = GlobalKey<ScaffoldState>();

       return Scaffold(
        key: scaffoldKey,
        drawer: const Drawer(),
        appBar: PreferredSize(preferredSize: const Size.fromHeight(kTextTabBarHeight), child: HomeAppbar(scaffoldKey: scaffoldKey)),
           body: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      child: Text("Find your product on DummyJSON", style: AppTextStyle.robotoW800s45 ),
                    ),
                    Watch.builder(
                        builder: (context) => categorieState.maybeMap(
                        loading: () => const CircularProgressIndicator(),
                        data: (categories) => Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Select Categories", style: AppTextStyle.robotoW700s20),
                                IconButton(
                                  style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, elevation: 4, foregroundColor: AppColors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                                  onPressed: (){}, 
                                  icon: Icon(Icons.filter_alt, color: AppColors.white, size: 40),
                                ),
                              ],
                            ),
                          ],
                        ),
                        orElse: () => Container(),
                        error: (error) => Text(error.toString()),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: Watch.builder(
                        builder: (context) => productState.maybeMap(
                          orElse: () => Container(),
                          loading: () => Center(child: CircularProgressIndicator(color: AppColors.primary)),
                          data: (products) => CustomScrollView(
                            slivers: [
                              SliverGrid.builder(
                                itemCount: products.length,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 0.68,
                                  mainAxisSpacing: 5,
                                  crossAxisSpacing: 6,
                                ), 
                                itemBuilder: (context, index) {
                                  final product = products[index];
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                    elevation: 4,
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 10),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: CachedNetworkImage(
                                            height: MediaQuery.sizeOf(context).height * 0.15,
                                            width: MediaQuery.sizeOf(context).width * 0.4,
                                            imageUrl: product.thumbnail,
                                            fit: BoxFit.cover,
                                            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                            errorWidget: (context, url, error) => const Icon(Icons.error),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          padding: const EdgeInsets.all(8),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                width: 200,
                                                child: Text(product.title, style: AppTextStyle.robotoW700s16, textAlign: TextAlign.left, maxLines: 1, overflow: TextOverflow.ellipsis),
                                              ),
                                              SizedBox(
                                                width: 200,
                                                child: Text(product.brand, style: AppTextStyle.robotoW700s16.copyWith(color: Colors.grey), textAlign: TextAlign.left, maxLines: 1, overflow: TextOverflow.ellipsis),
                                              ),
                                              const SizedBox(height: 7),
                                              SizedBox(
                                                width: 200,
                                                child: Text(FormatDouble.priceToCurrency(product.price), style: AppTextStyle.robotoW800s18, textAlign: TextAlign.left, maxLines: 1, overflow: TextOverflow.ellipsis),
                                              ),
                                              const SizedBox(height: 5),
                                              DmButton(onTap: (){}, height: 30, content: "Buy", textStyle: AppTextStyle.robotoW800s16.copyWith(color: AppColors.white)),
                                            ],
                                          ),
                                        ),
                                      ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          error: () => const Center(child: Text("ERROR STATE")),
                        ),
                      ),
                    ),
                  ],
                ),
               ),
       );
  }
}
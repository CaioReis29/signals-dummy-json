import 'package:dummy_project/global/models/product/product.dart';
import 'package:dummy_project/global/themes/app_text_theme.dart';
import 'package:flutter/material.dart';

class ProductTabBar extends StatelessWidget {
  final Product product;

  const ProductTabBar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Ink(
              height: 45,
              child: TabBar(tabs: [
                Tab(child: Text("Infos", style: AppTextStyle.robotoW400s16)),
                Tab(child: Text("Description", style: AppTextStyle.robotoW400s16)),
              ]),
            ),
            SizedBox(
              height: 120,
              child: TabBarView(children: [
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Brand:", style: AppTextStyle.robotoW700s16),
                        Text(product.brand, style: AppTextStyle.robotoW500s16),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Category:", style: AppTextStyle.robotoW700s16),
                        Text(product.category, style: AppTextStyle.robotoW500s16),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Stock:", style: AppTextStyle.robotoW700s16),
                        Text(product.stock.toString(), style: AppTextStyle.robotoW500s16),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Discount:", style: AppTextStyle.robotoW700s16),
                        Text("${product.discountPercentage}%", style: AppTextStyle.robotoW500s16),
                      ],
                    )
                  ],
                ),
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [Text(product.description, style: AppTextStyle.robotoW700s20)],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

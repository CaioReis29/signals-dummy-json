import 'package:dummy_project/global/components/dm_button.dart';
import 'package:dummy_project/global/themes/app_colors.dart';
import 'package:dummy_project/global/themes/app_text_theme.dart';
import 'package:dummy_project/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class CategoriesBuild extends StatelessWidget {
  final List<String> categories;
  final HomeController controller;

  const CategoriesBuild(
      {super.key, required this.categories, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: DmButton(
            onTap: () => controller.loadProductsByCategorie(categories[index]),
            content: categories[index],
            width: 175,
            height: 50,
            textStyle:AppTextStyle.robotoW700s16.copyWith(color: AppColors.white)),
      ),
    );
  }
}

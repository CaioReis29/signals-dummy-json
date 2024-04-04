import 'package:dummy_project/global/components/dm_shimmer.dart';
import 'package:flutter/material.dart';

class LoadingCategories extends StatelessWidget {
  const LoadingCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: DMShimmer(height: 50, width: 175, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

import 'package:dummy_project/global/components/dm_shimmer.dart';
import 'package:flutter/material.dart';

class ProductLoadingState extends StatelessWidget {
  const ProductLoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          DMShimmer(height: MediaQuery.sizeOf(context).height * 0.3, width: MediaQuery.sizeOf(context).width),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DMShimmer(height: 50, width: MediaQuery.sizeOf(context).width * 0.3),
              DMShimmer(height: 50, width: MediaQuery.sizeOf(context).width * 0.3),
            ],
          ),
          const SizedBox(height: 20),
          Align(
              alignment: Alignment.centerLeft,
              child: DMShimmer(height: 50, width: MediaQuery.sizeOf(context).width * 0.3)),
          const SizedBox(height: 5),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: DMShimmer(height: 120, width: 120, borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DMShimmer(height: 50, width: MediaQuery.sizeOf(context).width * 0.3),
              DMShimmer(height: 50, width: MediaQuery.sizeOf(context).width * 0.3),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DMShimmer(height: 50, width: MediaQuery.sizeOf(context).width * 0.3),
              DMShimmer(height: 50, width: MediaQuery.sizeOf(context).width * 0.3),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DMShimmer(height: 50, width: MediaQuery.sizeOf(context).width * 0.3),
              DMShimmer(height: 50, width: MediaQuery.sizeOf(context).width * 0.3),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DMShimmer(height: 50, width: MediaQuery.sizeOf(context).width * 0.3),
              DMShimmer( height: 50, width: MediaQuery.sizeOf(context).width * 0.3),
            ],
          ),
        ],
      ),
    );
  }
}

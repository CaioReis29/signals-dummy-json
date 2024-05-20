import 'package:cached_network_image/cached_network_image.dart';
import 'package:dummy_project/global/components/dm_shimmer.dart';
import 'package:dummy_project/global/models/product/product.dart';
import 'package:flutter/material.dart';

class ProductDialog extends StatelessWidget {
  final Product product;

  const ProductDialog({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: product.images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            child: InkWell(
              onTap: () => showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      insetAnimationCurve: Curves.easeInOut,
                      clipBehavior: Clip.antiAlias,
                      insetAnimationDuration: const Duration(milliseconds: 400),
                      elevation: 4,
                      child: CachedNetworkImage(
                        imageUrl: product.images[index],
                        fit: BoxFit.contain,
                        placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                      ),
                    );
                  }),
              child: Ink(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: product.images[index],
                    placeholder: (context, url) => DMShimmer(height: 120, width: 120, borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

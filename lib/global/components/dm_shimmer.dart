import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DMShimmer extends StatelessWidget {
  final double height;
  final double width;
  final Color? baseColor;
  final Color? highlightColor;
  final bool isRounded;
  final BorderRadius? borderRadius;

  const DMShimmer({
    Key? key,
    required this.height,
    required this.width,
    this.baseColor,
    this.highlightColor,
    this.isRounded = false,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Shimmer.fromColors(
        baseColor: baseColor ?? Colors.grey.shade800,
        highlightColor: highlightColor ?? Colors.grey.shade500,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(50),
            borderRadius: borderRadius ??
                BorderRadius.circular(isRounded ? height / 2 : 0),
          ),
        ),
      ),
    );
  }
}
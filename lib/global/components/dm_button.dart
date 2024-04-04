import 'package:dummy_project/global/themes/app_colors.dart';
import 'package:dummy_project/global/themes/app_text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DmButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget? child;
  final String? content;
  final bool isLoading;
  final TextStyle? textStyle;
  final double? height;
  final double? width;

  const DmButton({ super.key, required this.onTap, this.child, this.content, this.isLoading = false, this.textStyle, this.height, this.width});

   @override
   Widget build(BuildContext context) {
       return SizedBox(
        height: height ?? 60,
        width: width ?? MediaQuery.sizeOf(context).width * 0.9,
         child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, foregroundColor: AppColors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
          onPressed: onTap, child: isLoading ? Icon(CupertinoIcons.arrow_counterclockwise, color: AppColors.white, size: 30, weight: 40) : Text(content ?? "", style: textStyle ?? AppTextStyle.robotoW800s18),
          ),
       );
  }
}
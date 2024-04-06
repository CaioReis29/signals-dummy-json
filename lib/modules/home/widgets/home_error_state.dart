import 'package:dummy_project/global/components/dm_button.dart';
import 'package:dummy_project/global/themes/app_colors.dart';
import 'package:dummy_project/global/themes/app_text_theme.dart';
import 'package:flutter/material.dart';

class HomeErrorState extends StatelessWidget {
  final VoidCallback onTap;
  const HomeErrorState({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 170),
      child: Center(
          child: SizedBox(
        height: 250,
        width: 250,
        child: Card(
          elevation: 6,
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Icon(Icons.signal_wifi_connected_no_internet_4_rounded, size: 50, color: Colors.redAccent),
              const SizedBox(height: 20),
              Text("Error! Try Again.", style: AppTextStyle.robotoW600s18),
              const SizedBox(height: 45),
              DmButton(
                  onTap: onTap,
                  width: MediaQuery.sizeOf(context).width * 0.4,
                  height: 40,
                  content: "Reload",
                  textStyle: AppTextStyle.robotoW700s16.copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

import 'package:dummy_project/global/themes/app_colors.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const HomeAppbar({ super.key, required this.scaffoldKey });

   @override
   Widget build(BuildContext context) {
       return AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width * 0.7,
                child: TextFormField(
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    label: const Text("Search", textAlign: TextAlign.center),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    prefixIcon: Icon(Icons.search, color: AppColors.primary, size: 30),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: const BorderSide(color: Colors.grey))
                  ),
                ),
              ),
            ),
          ],
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () => scaffoldKey.currentState!.openDrawer(), 
              icon: const Icon(Icons.format_align_left, size: 30), tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        );
  }
}
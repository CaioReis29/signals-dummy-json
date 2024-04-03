
import 'package:dummy_project/global/routes/app_routes.dart';
import 'package:dummy_project/global/themes/dm_theme.dart';
import 'package:dummy_project/modules/home/home_view.dart';
import 'package:dummy_project/modules/login/login_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dummy",
      theme: DmTheme.theme,
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.login:(_) => const LoginView(),
        AppRoutes.home:(_) => const HomeView(),
      },
    );
  }
}
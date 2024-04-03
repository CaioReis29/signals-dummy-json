import 'package:dummy_project/global/components/dm_button.dart';
import 'package:dummy_project/global/components/dm_text_field.dart';
import 'package:dummy_project/global/injects.dart';
import 'package:dummy_project/global/routes/app_routes.dart';
import 'package:dummy_project/global/themes/app_colors.dart';
import 'package:dummy_project/global/themes/app_text_theme.dart';
import 'package:dummy_project/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

final loginController = inject<LoginController>();

class LoginView extends StatefulWidget {

  const LoginView({ super.key });

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final username = loginController.userName;
  final password = loginController.password;

   @override
   Widget build(BuildContext context) {
       return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
         child: Scaffold(
             body: Watch(
                (context) {
                 return SingleChildScrollView(
                   child: SizedBox(
                    height: MediaQuery.sizeOf(context).height,
                    width: MediaQuery.sizeOf(context).width,
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text.rich(
                        style: AppTextStyle.robotoW800s18,
                        TextSpan(children: [
                          const TextSpan(text: "Welcome to Dummy"),
                          TextSpan(text: "JSON", style: TextStyle(color: AppColors.primary)),
                        ])),
                        const SizedBox(height: 50),
                        DmTextField(onChanged: username.set, label: "User Name", errorText: loginController.nameError.value),
                        DmTextField(onChanged: password.set, label: "Password", errorText: loginController.passError.value, isSecret: true),
                        DmButton(
                          onTap: () => loginController.isValid.value ? loginController.validateForm() : loginController.login(() => Navigator.pushReplacementNamed(context, AppRoutes.home)),
                          isLoading: loginController.loginStatus.value.isLoading,
                          content: "ENTER",
                        ),
                      ],
                     ),
                   ),
                 );
               }
             ),
         ),
       );
  }
}
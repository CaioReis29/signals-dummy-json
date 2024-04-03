import 'package:dartz/dartz.dart';
import 'package:dummy_project/global/components/toast_message.dart';
import 'package:dummy_project/global/services/auth_service/login_service_imp.dart';
import 'package:signals/signals.dart';

class UserLogin {
  final String userName;
  final String password;

  UserLogin({required this.userName, required this.password});
}

class LoginController {
  LoginServiceImp service;

  LoginController(this.service);

  final userName = signal('');
  final password = signal('');

  late final isValid = computed(() => userName().isEmpty && password().isEmpty);

  final nameError = signal<String?>(null);
  final passError = signal<String?>(null);

  validateForm() {
    if(userName().length < 6) nameError.value = "O nome precisa ter mais de 6 caracteres";
    if(password().length < 6) passError.value = "A senha precisa ter mais de 6 caracteres";
  }

  late final loginStatus = signal<AsyncState<bool>>(AsyncData(false));

  Future<void> login(Function? onTap) async {
    loginStatus.value = AsyncLoading();
    final result = await service.login(userName.value, password.value);
    switch (result) {
      case Right():
        loginStatus.value = AsyncData(true);
        showToast(message: "SUCESS");
        onTap!() ?? (){};
        break;
      case Left():
        loginStatus.value = AsyncData(false);
        showToast(message: "ERROR");
      default:
    }
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockerroom/modules/auth/model/login.dart';
import 'package:lockerroom/modules/auth/repository/login.dart';
import 'package:lockerroom/modules/home/home.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final RemoteLoginRepository _loginRepository =
      RemoteLoginRepository(url: 'http://10.0.2.2:80/v1/auth/login');
  late TextEditingController usernameController, passwordController;

  @override
  void onInit() {
    super.onInit();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  String? validateUsername(String value) {
    if (value.isEmpty || value.trim().isEmpty) {
      return "Fill in username";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password should be of minimum 6 characters";
    }
    return null;
  }

  void checkLogin(String username, String password) async {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    LoginResponse response = await _loginRepository.login(username, password);
    switch (response.statusCode) {
      case 200:
        toHomePage();
      default:
        Get.snackbar(
          'Login fail',
          response.fail!.detail,
          snackPosition: SnackPosition.BOTTOM,
        );
    }
  }

  void toHomePage() {
    Get.to(() => const HomePage());
  }
}

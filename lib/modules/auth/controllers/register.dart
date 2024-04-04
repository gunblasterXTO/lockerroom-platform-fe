import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockerroom/modules/auth/model/register.dart';
import 'package:lockerroom/modules/auth/repository/register.dart';
import 'package:lockerroom/modules/auth/views/login.dart';
import 'package:lockerroom/routes/pages.dart';

class RegisterController extends GetxController {
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  final RemoteRegisterRepository _registerRepository =
      RemoteRegisterRepository(url: 'http://10.0.2.2:80/v1/auth/register');
  late TextEditingController usernameController,
      emailController,
      passwordController;

  @override
  void onInit() {
    super.onInit();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  String? validateUsername(String value) {
    if (value.isEmpty || value.trim().isEmpty || value.length < 6) {
      return "Username should be of minimum 6 characters";
    }
    return null;
  }

  String? validateEmail(String value) {
    if (!value.isEmail) {
      return "Email is not valid";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password should be of minimum 6 characters";
    }
    return null;
  }

  void checkRegister(String username, String email, String password) async {
    final isValid = registerFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }

    RegisterResponse response =
        await _registerRepository.register(username, email, password);
    switch (response.statusCode) {
      case 201:
        Get.to(() => const LoginPage());
      default:
        Get.snackbar(
          'Register fail',
          response.fail!.detail,
          snackPosition: SnackPosition.TOP,
        );
    }
  }

  void toLoginPage() {
    final String prevRoute = Get.routing.previous;
    if (prevRoute.contains(Routes.login)) {
      Get.back();
    }
    Get.toNamed(
      Routes.login,
    );
  }
}

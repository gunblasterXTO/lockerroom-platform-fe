import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockerroom/modules/auth/model/login.dart';
import 'package:lockerroom/modules/auth/repository/login.dart';
import 'package:lockerroom/routes/pages.dart';

class LoginController extends GetxController {
  final isLoading = false.obs;
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

    isLoading(true);
    LoginResponse response = await _loginRepository.login(username, password);
    isLoading(false);

    switch (response.statusCode) {
      case HttpStatus.ok:
        toHomePage();
      default:
        Get.snackbar(
          'Login fail',
          response.fail!.detail,
          snackPosition: SnackPosition.TOP,
        );
    }
  }

  void toHomePage() {
    Get.offAllNamed(
      Routes.home,
    );
  }

  void toRegisterPage() {
    final String prevRoute = Get.routing.previous;
    if (prevRoute.contains(Routes.register)) {
      Get.back();
    }
    Get.toNamed(
      Routes.register,
    );
  }
}

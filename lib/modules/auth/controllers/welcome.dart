import 'package:get/get.dart';
import 'package:lockerroom/routes/pages.dart';

class WelcomeController extends GetxController {
  void navigateToLogin() {
    Get.toNamed(
      Routes.login,
    );
  }

  void navigateToRegister() {
    Get.toNamed(
      Routes.register,
    );
  }

  void navigateToHome() {
    Get.offAndToNamed(
      Routes.home,
    );
  }
}

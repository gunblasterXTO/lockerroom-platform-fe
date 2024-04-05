import 'package:get/get.dart';
import 'package:lockerroom/common/helper/ui_helper.dart';

SnackbarController errorSnackBar(String title, String message) {
  return Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.TOP,
    backgroundColor: UIConst.errorWidgetBackground,
    colorText: UIConst.errorWidgetText,
    duration: const Duration(seconds: 1),
  );
}

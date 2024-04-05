import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockerroom/common/helper/ui_helper.dart';

class SuccessRegisterDialog extends StatelessWidget {
  const SuccessRegisterDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/email_confirmed.png",
              height: MediaQuery.of(Get.context!).size.height * 0.25,
              width: MediaQuery.of(Get.context!).size.width * 0.25,
            ),
            const Text(
              "Thank you for your registration!",
              style: TextStyle(fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: UIConst.smallSizedBoxHeight),
            const Text(
              "We're glad you are here. You will be redirected to the login page in seconds.",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

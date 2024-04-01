import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockerroom/common/helper/ui_helper.dart';
import 'package:lockerroom/common/widgets/button.dart';
import 'package:lockerroom/common/widgets/text_form.dart';
import 'package:lockerroom/modules/auth/controllers/login.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
              top: 16,
              left: UIConst.pagePaddingHorizontal,
              right: UIConst.pagePaddingHorizontal),
          width: context.width,
          height: context.height,
          child: Form(
            key: controller.loginFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Text(
                  'Welcome to Lockerroom!',
                  style: context.textTheme.displayLarge,
                ),
                SizedBox(
                  height: UIConst.bigSizedBoxHeight,
                ),
                CustomInputText(
                  required: true,
                  controller: controller.usernameController,
                  validator: (value) => controller.validateUsername(value!),
                  hint: 'username',
                  obsecure: false,
                ),
                SizedBox(
                  height: UIConst.smallSizedBoxHeight,
                ),
                CustomInputText(
                    required: true,
                    controller: controller.passwordController,
                    validator: (value) => controller.validatePassword(value!),
                    hint: 'password',
                    obsecure: true),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text('Forget password?')),
                SizedBox(
                  height: UIConst.smallSizedBoxHeight,
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomElevatedButton(
                            text: 'Login',
                            onPressed: () {
                              controller.checkLogin(
                                  controller.usernameController.text,
                                  controller.passwordController.text);
                            })),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

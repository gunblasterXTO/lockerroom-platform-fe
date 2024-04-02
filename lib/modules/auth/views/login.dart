import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockerroom/common/helper/ui_helper.dart';
import 'package:lockerroom/common/styles/button.dart';
import 'package:lockerroom/common/widgets/form.dart';
import 'package:lockerroom/modules/auth/controllers/login.dart';
import 'package:lockerroom/modules/auth/views/register.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(UIConst.pagePaddingHorizontal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, welcome back! \u{1F3C0}',
                style: context.textTheme.headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: UIConst.smallSizedBoxHeight,
              ),
              Text(
                'Happy to see you again, ready to ball?',
                style: context.textTheme.bodySmall,
              ),
              SizedBox(height: UIConst.bigSizedBoxHeight),
              //Form
              Form(
                key: controller.loginFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    CustomInputText(
                      controller: controller.usernameController,
                      height: UIConst.formHeight,
                      hint: 'Enter your username',
                      obsecure: false,
                      prefixIcon: const Icon(Icons.person),
                      required: true,
                      validator: (value) => controller.validateUsername(value!),
                    ),
                    SizedBox(height: UIConst.formSizedBoxHeight),
                    CustomInputText(
                      controller: controller.passwordController,
                      height: UIConst.formHeight,
                      hint: 'Enter your password',
                      obsecure: true,
                      prefixIcon: const Icon(Icons.lock),
                      required: true,
                      validator: (value) => controller.validatePassword(value!),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Forget password?',
                  style: context.textTheme.bodyMedium,
                ),
              ),
              SizedBox(
                height: UIConst.formSizedBoxHeight,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: primaryElevatedButton.copyWith(),
                      onPressed: () {
                        controller.checkLogin(
                          controller.usernameController.text,
                          controller.passwordController.text,
                        );
                      },
                      child: const Text('Login'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: UIConst.formSizedBoxHeight,
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account? ",
                        style: context.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "Register",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(() => const RegisterPage());
                          },
                        style: context.textTheme.bodyMedium!.copyWith(
                          color: UIConst.lightPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

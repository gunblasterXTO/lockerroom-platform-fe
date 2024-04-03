import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockerroom/common/helper/ui_helper.dart';
import 'package:lockerroom/common/styles/button.dart';
import 'package:lockerroom/common/widgets/form.dart';
import 'package:lockerroom/modules/auth/controllers/login.dart';
import 'package:lockerroom/modules/auth/views/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController c = Get.put(LoginController());

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
                style: context.textTheme.bodySmall!
                    .copyWith(color: UIConst.disabledTextColor),
              ),
              SizedBox(height: UIConst.bigSizedBoxHeight),
              //Form
              Form(
                key: c.loginFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    CustomInputText(
                      controller: c.usernameController,
                      height: UIConst.formHeight,
                      hint: 'Enter your username',
                      obsecure: false,
                      prefixIcon: const Icon(Icons.person),
                      required: true,
                      validator: (value) => c.validateUsername(value!),
                    ),
                    SizedBox(height: UIConst.formSizedBoxHeight),
                    CustomInputText(
                      controller: c.passwordController,
                      height: UIConst.formHeight,
                      hint: 'Enter your password',
                      obsecure: true,
                      prefixIcon: const Icon(Icons.lock),
                      required: true,
                      validator: (value) => c.validatePassword(value!),
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
              Obx(() {
                return SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: primaryElevatedButton,
                    onPressed: c.isLoading.value
                        ? null
                        : () {
                            c.checkLogin(
                              c.usernameController.text,
                              c.passwordController.text,
                            );
                          },
                    child: c.isLoading.value
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                            height: MediaQuery.of(context).size.height * 0.025,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: UIConst.lightPrimaryColor,
                            ),
                          )
                        : const Text('Login'),
                  ),
                );
              }),

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

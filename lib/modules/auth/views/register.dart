import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockerroom/common/helper/ui_helper.dart';
import 'package:lockerroom/common/styles/button.dart';
import 'package:lockerroom/common/widgets/form.dart';
import 'package:lockerroom/modules/auth/controllers/register.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final RegisterController c = Get.put(RegisterController());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(UIConst.pagePaddingHorizontal),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello there!👋',
                style: context.textTheme.headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: UIConst.smallSizedBoxHeight,
              ),
              Text(
                'We are happy you decide to create an account!',
                style: context.textTheme.bodySmall!
                    .copyWith(color: UIConst.disabledTextColor),
              ),
              SizedBox(height: UIConst.bigSizedBoxHeight),
              Form(
                key: c.registerFormKey,
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
                      controller: c.emailController,
                      height: UIConst.formHeight,
                      hint: 'Enter your email',
                      obsecure: false,
                      prefixIcon: const Icon(Icons.email_rounded),
                      required: true,
                      validator: (value) => c.validateEmail(value!),
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
              SizedBox(
                height: UIConst.formSizedBoxHeight,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: primaryElevatedButton,
                  onPressed: () {
                    c.checkRegister(
                      c.usernameController.text,
                      c.emailController.text,
                      c.passwordController.text,
                    );
                  },
                  child: const Text('Register'),
                ),
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
                        text: "Already have an account? ",
                        style: context.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "Login",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => c.toLoginPage(),
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

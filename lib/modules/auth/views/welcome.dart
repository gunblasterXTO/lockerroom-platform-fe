import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockerroom/common/styles/button.dart';
import 'package:lockerroom/modules/auth/views/login.dart';
import 'package:lockerroom/modules/auth/views/register.dart';
import 'package:lockerroom/modules/home/home.dart';

import '../../../common/helper/ui_helper.dart';
import '../../../common/widgets/button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/welcome.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Give fade effect on background image
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black.withOpacity(1.0)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Action button
          Positioned(
            bottom: 120,
            left: UIConst.pagePaddingHorizontal,
            right: UIConst.pagePaddingHorizontal,
            child: ElevatedButton(
              style: primaryElevatedButton,
              onPressed: () => Get.to(
                () => const LoginPage(),
                transition: UIConst.clickPageTransition,
                duration: Duration(milliseconds: UIConst.pageTransition),
              ),
              child: const Text('Login'),
            ),
          ),
          Positioned(
            bottom: 60,
            left: UIConst.pagePaddingHorizontal,
            right: UIConst.pagePaddingHorizontal,
            child: ElevatedButton(
              style: secondaryElevatedButton,
              onPressed: () => Get.to(
                () => const RegisterPage(),
                transition: UIConst.clickPageTransition,
              ),
              child: const Text('Register'),
            ),
          ),
          // Continue as guest
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: CustomTextButton(
                text: 'Continue as guest',
                textStyle: secondaryTextButton,
                onTap: () => Get.to(
                  () => const HomePage(),
                  transition: UIConst.clickPageTransition,
                  duration: Duration(milliseconds: UIConst.pageTransition),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

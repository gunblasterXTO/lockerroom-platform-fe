import 'package:flutter/material.dart';
import 'package:lockerroom/common/styles/button.dart';
import 'package:lockerroom/modules/auth/controllers/welcome.dart';

import '../../../common/helper/ui_helper.dart';
import '../../../common/widgets/button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final WelcomeController c = WelcomeController();

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
            bottom: UIConst.setHeight(120),
            left: UIConst.pagePaddingHorizontal,
            right: UIConst.pagePaddingHorizontal,
            child: ElevatedButton(
              style: primaryElevatedButton,
              onPressed: () => c.navigateToLogin(),
              child: const Text('Login'),
            ),
          ),
          Positioned(
            bottom: UIConst.setHeight(60),
            left: UIConst.pagePaddingHorizontal,
            right: UIConst.pagePaddingHorizontal,
            child: ElevatedButton(
              style: secondaryElevatedButton,
              onPressed: () => c.navigateToRegister(),
              child: const Text('Register'),
            ),
          ),
          // Continue as guest
          Positioned(
            bottom: UIConst.setHeight(20),
            left: UIConst.setWidth(0),
            right: UIConst.setWidth(0),
            child: Center(
              child: CustomTextButton(
                text: 'Continue as guest',
                textStyle: secondaryTextButton,
                onTap: () => c.navigateToHome(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockerroom/theme/ui_helper.dart';
import 'package:lockerroom/views/pages/login/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: UIConst.pagePaddingHorizontal),
        child: Column(
          children: [
            Text(
              'Welcome to Lockerroom!',
              style: context.textTheme.displayLarge,
            ),
            SizedBox(
              height: UIConst.bigSizedBoxHeight,
            ),
            CustomInputText(required: true, hint: 'username', obsecure: false),
            SizedBox(
              height: UIConst.smallSizedBoxHeight,
            ),
            CustomInputText(required: true, hint: 'password', obsecure: true),
            Align(
                alignment: Alignment.centerRight,
                child: Text('Forget password?')),
            SizedBox(
              height: UIConst.smallSizedBoxHeight,
            ),
            Row(
              children: [
                Expanded(
                    child:
                        CustomElevatedButton(text: 'Login', onPressed: () {})),
              ],
            )
          ],
        ),
      ),
    );
  }
}

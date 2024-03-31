import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockerroom/common/helper/ui_helper.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              UIConst.circularBorderRadius), // Adjust border radius as needed
        ),
      )),
      child: Text(
        text,
        style: context.textTheme.displaySmall,
      ),
    );
  }
}

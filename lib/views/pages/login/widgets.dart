import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockerroom/theme/ui_helper.dart';

class CustomInputText extends StatelessWidget {
  final bool required;
  final String hint;
  final bool obsecure;
  final double? width;
  final double? height;
  const CustomInputText(
      {super.key,
      required this.required,
      required this.hint,
      required this.obsecure,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        obscureText: obsecure,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15),
            hintText: hint,
            hintStyle: context.textTheme.displaySmall,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius:
                    BorderRadius.circular(UIConst.circularBorderRadius)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius:
                    BorderRadius.circular(UIConst.circularBorderRadius))),
      ),
    );
  }
}

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

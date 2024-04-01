import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockerroom/common/helper/ui_helper.dart';

class CustomInputText extends StatelessWidget {
  final bool required;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hint;
  final bool obsecure;
  final double? width;
  final double? height;
  const CustomInputText(
      {super.key,
      required this.required,
      required this.controller,
      required this.validator,
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
        controller: controller,
        validator: validator,
        obscureText: obsecure,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15),
          hintText: hint,
          hintStyle: context.textTheme.displaySmall,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius:
                  BorderRadius.circular(UIConst.circularBorderRadius)),
        ),
      ),
    );
  }
}

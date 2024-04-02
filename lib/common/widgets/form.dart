import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockerroom/common/helper/ui_helper.dart';

class CustomInputText extends StatelessWidget {
  final bool required;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hint;
  final bool obsecure;
  final Icon? prefixIcon;
  final double? width;
  final double? height;
  const CustomInputText({
    super.key,
    required this.required,
    required this.controller,
    required this.validator,
    required this.hint,
    required this.obsecure,
    this.prefixIcon,
    this.width,
    this.height,
  });

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
          contentPadding:
              EdgeInsets.all(UIConst.textFormFieldDecorationPadding),
          prefixIcon: prefixIcon,
          hintText: hint,
          hintStyle: context.textTheme.titleSmall,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(UIConst.circularBorderRadius),
          ),
          errorMaxLines: 1,
          errorStyle: const TextStyle(height: 0.8),
        ),
      ),
    );
  }
}

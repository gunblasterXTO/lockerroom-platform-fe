import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UIConst {
  UIConst._();

  // Color
  static Color lightPrimaryColor = const Color.fromRGBO(199, 20, 26, 1);
  static Color lightSecondaryColor = Colors.white;
  static Color disabledTextColor = Colors.grey;
  static Color errorWidgetBackground = const Color.fromARGB(255, 255, 130, 130);
  static Color errorWidgetText = Colors.white;

  // Size
  static double pagePaddingHorizontal = 20.0;
  static double circularBorderRadius = 10.0;
  static double bigSizedBoxHeight = 50.0;
  static double smallSizedBoxHeight = 5.0;
  static double buttonSizedBoxHeight = 15.0;
  static double formSizedBoxHeight = 10.0;
  static double formHeight = 75.0;
  static double textFormFieldDecorationPadding = 15.0;

  // Animation
  static Transition clickButtonTransition = Transition.fadeIn;

  // Time
  static int pageTransitionDuration = 200; // milliseconds
}

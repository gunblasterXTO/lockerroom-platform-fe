import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  static double pagePaddingHorizontal = UIConst.setWidth(20.0);
  static double circularBorderRadius = 5.0.r;
  static double bigSizedBoxHeight = UIConst.setHeight(50.0);
  static double smallSizedBoxHeight = UIConst.setHeight(5.0);
  static double buttonSizedBoxHeight = UIConst.setHeight(15.0);
  static double formSizedBoxHeight = UIConst.setHeight(5.0);
  static double formHeight = UIConst.setHeight(75.0);
  static double textFormFieldDecorationPadding = UIConst.setWidth(15.0);

  // Animation
  static Transition clickButtonTransition = Transition.fadeIn;

  // Time
  static int pageTransitionDuration = 200; // milliseconds

  static double setHeight(double height) {
    return ScreenUtil().setHeight(height);
  }

  static double setWidth(double width) {
    return ScreenUtil().setWidth(width);
  }

  static double setFontSize(double size) {
    return ScreenUtil().setSp(size);
  }
}

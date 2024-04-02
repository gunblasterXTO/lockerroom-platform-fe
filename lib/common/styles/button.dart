import 'package:flutter/material.dart';
import 'package:lockerroom/common/theme/theme.dart';

ThemeClass _themeClass = ThemeClass();

final ButtonStyle primaryElevatedButton = ElevatedButton.styleFrom(
  backgroundColor: _themeClass.lightPrimaryColor,
  foregroundColor: _themeClass.lightSecondaryColor,
);

final ButtonStyle secondaryElevatedButton = ElevatedButton.styleFrom(
  backgroundColor: _themeClass.lightSecondaryColor,
  foregroundColor: _themeClass.lightPrimaryColor,
);

final TextStyle secondaryTextButton =
    TextStyle(color: _themeClass.lightSecondaryColor);

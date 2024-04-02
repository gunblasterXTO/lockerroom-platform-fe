import 'package:flutter/material.dart';
import 'package:lockerroom/common/helper/ui_helper.dart';

final ButtonStyle primaryElevatedButton = ElevatedButton.styleFrom(
  backgroundColor: UIConst.lightPrimaryColor,
  foregroundColor: UIConst.lightSecondaryColor,
);

final ButtonStyle secondaryElevatedButton = ElevatedButton.styleFrom(
  backgroundColor: UIConst.lightSecondaryColor,
  foregroundColor: UIConst.lightPrimaryColor,
);

final TextStyle secondaryTextButton =
    TextStyle(color: UIConst.lightSecondaryColor);

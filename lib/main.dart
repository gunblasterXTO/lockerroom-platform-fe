import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockerroom/common/theme/theme.dart';
import 'package:lockerroom/routes/pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
      theme: ThemeClass.lightTheme,
      debugShowCheckedModeBanner: true,
    ),
  );
}

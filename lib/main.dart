import 'package:bookly_app/Features/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BokklyApp());
}

class BokklyApp extends StatelessWidget {
  const BokklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_view(),
    );
  }
}

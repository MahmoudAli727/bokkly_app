import 'package:bookly_app/Features/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class splash_view extends StatelessWidget {
  const splash_view({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: splash_view_body(),
    );
  }
}

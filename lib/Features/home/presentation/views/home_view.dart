import 'package:bookly_app/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class home_view extends StatelessWidget {
  const home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: home_view_body(),
    );
  }
}

import 'package:bookly_app/Features/splash/presentation/views/widgets/Sliding.dart';
import 'package:bookly_app/core/utils/Assets.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class splash_view_body extends StatefulWidget {
  const splash_view_body({super.key});

  @override
  State<splash_view_body> createState() => _splash_view_bodyState();
}

class _splash_view_bodyState extends State<splash_view_body>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigatetohome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image(
          image: AssetImage(AssetsData.logo),
        ),
        SizedBox(
          height: 4,
        ),
        SildingText(
          slidingAnimation: slidingAnimation,
        )
      ],
    );
  }

  void navigatetohome() {
    Future.delayed(Duration(seconds: 2), () {
      // Get.to(
      //   const home_view(),
      //   transition: Transition.fade,
      //   duration: kTabScrollDuration,
      // );
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(begin: Offset(0, 20), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
}

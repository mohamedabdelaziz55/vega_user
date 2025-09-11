import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vega_user/core/utils/app_router.dart';
import '../../../../core/utils/assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 5650 ), () {
    context.go(AppRouter.konBoard);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Image.asset(
          AssetsData.logoGif,
        ),
      )
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

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

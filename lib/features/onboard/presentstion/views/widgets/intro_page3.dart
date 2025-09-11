import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetsData.deliveryGif),
          SizedBox(height: 20),
          Text(
            'Fast & Reliable Delivery',//توصيل سريع وموثوق
            style: Styles.textStyle24bold,
          ),
          SizedBox(height: 10),
          Text(
            'Enjoy a seamless shopping experience with quick and safe delivery right to your doorstep.',//استمتع بتجربة تسوق سلسة مع توصيل سريع وآمن إلى باب منزلك.
            style: Styles.textStyle16,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

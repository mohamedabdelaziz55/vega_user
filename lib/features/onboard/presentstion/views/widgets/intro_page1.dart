import 'package:flutter/material.dart';
import 'package:vega_user/core/utils/assets.dart';

import '../../../../../core/utils/styles.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetsData.fruitBasketGif),
          SizedBox(height: 20,),
          Text('Fresh & Healthy Fruits',//فواكه طازجة وصحية
            style: Styles.textStyle24bold,),
          SizedBox(height: 10,),
          Text('Discover a wide variety of fresh and healthy fruits, carefully selected to bring the best quality to your daily meals.',//اكتشف مجموعة واسعة من الفواكه الطازجة والصحية، المختارة بعناية لتقديم أفضل جودة لوجباتك اليومية.
            style: Styles.textStyle16,textAlign: TextAlign.center,),
        ],
      ),

    );
  }
}

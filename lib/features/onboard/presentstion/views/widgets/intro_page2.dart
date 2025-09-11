import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetsData.marketGif),
          SizedBox(height: 20,),
          Text('Your Smart Grocery Market',//سوق البقالة الذكي الخاص بك
            style: Styles.textStyle24bold,),
          SizedBox(height: 10,),
          Text('Everything you need from fruits, vegetables, and groceries all in one place. Shop easily anytime, anywhere',//كل ما تحتاجه من فواكه وخضروات وبقالة في مكان واحد. تسوق بسهولة في أي وقت وفي أي مكان
            style: Styles.textStyle16,textAlign: TextAlign.center,),
        ],
      ),

    );
  }
}

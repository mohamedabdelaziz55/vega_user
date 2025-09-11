import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key, this.onTap, required this.text,
  });

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.pColor),
        color: AppColors.pColor,
      ),
      child: GestureDetector(


        onTap: onTap,
        child: Text(text, style: TextStyle(color: AppColors.text),),
      ),
    );
  }
}

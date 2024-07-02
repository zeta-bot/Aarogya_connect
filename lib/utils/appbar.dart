import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:aarogya_connect/utils/back_button.dart';
import 'package:flutter/material.dart';

AppBar buildAppbar(String iconPath, String title) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: MyColors.greenColor,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (iconPath.isNotEmpty)
          Image.asset(
            iconPath,
            height: 30,
          ),
        const SizedBox(width: 10),
        Text(
          title,
          style: MyStyles.subHeadingStyle,
        )
      ],
    ),
    titleSpacing: 0,
    leading: backButton,
  );
}

import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.zero,
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      content: Container(
        padding: const EdgeInsets.all(10),
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: MyColors.homeTileColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: MyColors.orangeColor,
          ),
        ),
        child: Text(
          message,
          style: MyStyles.bodyTextStyle,
        ),
      ),
    ),
  );
}

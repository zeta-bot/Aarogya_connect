import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/main.dart';
import 'package:flutter/material.dart';

final backButton = IconButton(
  onPressed: () => navigatorKey.currentState!.pop(),
  icon: const Icon(
    Icons.arrow_back_ios_new_rounded,
    size: 18,
    weight: 5,
    color: MyColors.blackColor,
  ),
);

import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:aarogya_connect/utils/back_button.dart';
import 'package:aarogya_connect/widgets/survey/survey_tile.dart';
import 'package:flutter/material.dart';

class SurveyScreen extends StatelessWidget {
  static const id = "/home/survey";
  const SurveyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: MyColors.greenColor,
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AssetConstants.survey,
              height: 30,
            ),
            const SizedBox(width: 10),
            Text(
              "Quick Servey",
              style: MyStyles.subHeadingStyle,
            ),
          ],
        ),
        iconTheme: const IconThemeData(
          color: MyColors.blackColor,
        ),
        leading: backButton,
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 50),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              MyColors.greenColor,
              MyColors.whiteColor,
            ],
          ),
        ),
        child: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SurveyTile(),
              SurveyTile(),
              SurveyTile(),
              SurveyTile(),
              SurveyTile(),
              SurveyTile(),
            ],
          ),
        ),
      ),
    );
  }
}

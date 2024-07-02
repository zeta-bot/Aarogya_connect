import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:aarogya_connect/widgets/global/custom_button.dart';
import 'package:flutter/material.dart';

class SurveyTile extends StatelessWidget {
  const SurveyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20).copyWith(bottom: 0),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      width: double.infinity,
      decoration: BoxDecoration(
        color: MyColors.homeTileColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: MyColors.orangeColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Survey 1",
            style:
                MyStyles.subHeadingStyle.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 5),
          Text(
            "Aonvaova aopai piaug ifg giegg gpehgg pp  wegeere ieb gerfoeodu vuv  ouobv evo f eeoegeeer ogeorfoeufourefef e    ouuvycyyycyc c y vineet kumar r rdc tc c rcn   x x mvtncrbxebsx  crxn mcnrxrcmt m ced, m6nrcmv 6nrxmc nr",
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: MyStyles.lightTextStyle,
          ),
          const SizedBox(height: 10),
          const CustomButton(
            label: 'Participate',
            height: 50,
          ),
        ],
      ),
    );
  }
}

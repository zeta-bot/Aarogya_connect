import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:aarogya_connect/utils/back_button.dart';
import 'package:aarogya_connect/widgets/global/custom_button.dart';
import 'package:flutter/material.dart';

class HealthVideoScreen extends StatelessWidget {
  static const id = "/home/health_video";
  const HealthVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: MyColors.greenColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AssetConstants.video,
              height: 30,
            ),
            const SizedBox(width: 10),
            Text(
              "Health Videos",
              style: MyStyles.subHeadingStyle,
            )
          ],
        ),
        titleSpacing: 0,
        leading: backButton,
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              buildYTTile(),
              buildYTTile(),
              buildYTTile(),
              buildYTTile(),
              buildYTTile(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildYTTile() {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: MyColors.homeTileColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: MyColors.orangeColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AssetConstants.ytThumbnail,
          ),
          const SizedBox(height: 5),
          Text(
            "10 ways to improve Your mental health apvi agdiuahf ",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: MyStyles.subHeadingStyle,
          ),
          const SizedBox(height: 5),
          Text(
            "A healthy body leads to a healthy mind. Here’s what you can do to ensure good mental health.",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: MyStyles.lightTextStyle,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Expanded(
                flex: 3,
                child: CustomButton(
                  height: 50,
                  label: 'Watch Video',
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: CustomButton(
                  height: 50,
                  label: ' Watch Later',
                  leadingIcon: const Icon(
                    Icons.add,
                    color: MyColors.orangeColor,
                  ),
                  backgroundColor: MyColors.greyColor.shade300,
                  labelColor: MyColors.orangeColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

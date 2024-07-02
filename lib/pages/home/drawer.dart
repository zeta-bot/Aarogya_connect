import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:aarogya_connect/main.dart';
import 'package:aarogya_connect/pages/complaints.dart';
import 'package:aarogya_connect/pages/contact_us/contact_us.dart';
import 'package:aarogya_connect/pages/donate.dart';
import 'package:aarogya_connect/pages/login.dart';
import 'package:aarogya_connect/pages/survey.dart';
import 'package:aarogya_connect/pages/volunteering/volunteer_screen.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  HomeDrawer({super.key});

  List<Map<String, String>> tiles = [
    {
      'icon_path': AssetConstants.survey,
      'title': "Quick Survey",
      "navigate_path": SurveyScreen.id
    },
    {
      'icon_path': AssetConstants.volunteer,
      'title': "Volunteering",
      "navigate_path": VolunteerScreen.id
    },
    {
      'icon_path': AssetConstants.donate,
      'title': "Donate Us",
      "navigate_path": DonateScreen.id
    },
    {
      'icon_path': AssetConstants.complaints,
      'title': "Complaints",
      "navigate_path": ComplaintScreen.id
    },
    {
      'icon_path': AssetConstants.contactUs,
      'title': "Contact Us",
      "navigate_path": '',
    },
    {
      'icon_path': AssetConstants.logout,
      'title': "Logout",
      "navigate_path": LoginScreen.id
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: MyColors.whiteColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(height: 50),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Image.asset(
                    AssetConstants.appLogo,
                    height: 30,
                  ),
                  Image.asset(
                    AssetConstants.appName,
                    height: 12,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              const SizedBox(height: 70),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: tiles
                    .map(
                      (map) => buildDrawerTile(
                          iconPath: map['icon_path']!,
                          context: context,
                          title: map['title']!,
                          navigatePath: map['navigate_path']!),
                    )
                    .toList(),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            margin: const EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
              color: MyColors.greenGradient,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DESIGNED & DEVELOPED",
                  style: MyStyles.subHeadingStyle.copyWith(fontSize: 12),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "BY  ",
                      style: MyStyles.subHeadingStyle.copyWith(fontSize: 12),
                    ),
                    Text(
                      "WINTERFELL",
                      style: MyStyles.subHeadingStyle.copyWith(
                        fontSize: 12,
                        color: MyColors.orangeColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      barrierColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: ContactUsScreen(),
        );
      },
    );
  }

  Widget buildDrawerTile(
      {required String iconPath,
      required String title,
      required BuildContext context,
      required String navigatePath}) {
    return GestureDetector(
      onTap: () {
        if (navigatePath == '') {
          _showBottomSheet(context);
          return;
        }
        if (navigatePath == LoginScreen.id) {
          navigatorKey.currentState!.popUntil((route) => route.isFirst);
          return;
        }
        navigatorKey.currentState!.pushNamed(navigatePath);
      },
      child: Container(
        height: 50,
        margin: const EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: MyColors.orangeGradient,
          border: Border.all(
            color: MyColors.orangeColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 20),
            Image.asset(iconPath, height: 30),
            const SizedBox(width: 10),
            Text(
              title,
              style: MyStyles.subHeadingStyle,
            )
          ],
        ),
      ),
    );
  }
}

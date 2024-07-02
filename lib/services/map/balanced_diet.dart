import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:aarogya_connect/main.dart';
import 'package:aarogya_connect/pages/diet_description.dart';
import 'package:flutter/material.dart';

class BalancedDiet extends StatelessWidget {
  static const id = "/home/balanced_diet";
  const BalancedDiet({super.key});

  Widget balancedDiet(String title, String logo) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
          color: MyColors.homeTileColor,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: MyColors.orangeColor)),
      child: GestureDetector(
        child: Row(children: [
          const SizedBox(
            width: 15,
          ),
          Image.asset(
            logo,
            fit: BoxFit.contain,
            height: 37,
            width: 50,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: MyStyles.bodyTextStyle.copyWith(fontWeight: FontWeight.w600),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 45,
        titleSpacing: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              AssetConstants.diet,
              fit: BoxFit.contain,
              height: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Balanced Diet",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: MyColors.greenColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(20).copyWith(bottom: 0),
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
        child: Column(children: [
          GestureDetector(
            onTap: () =>
                navigatorKey.currentState!.pushNamed(DietDescription.id),
            child: balancedDiet(
              "Age 0-8 years    आयु 0-8",
              AssetConstants.baby,
            ),
          ),
          GestureDetector(
            onTap: () =>
                navigatorKey.currentState!.pushNamed(DietDescription.id),
            child: balancedDiet(
                "Age 8-18 years    उम्र 8-18", AssetConstants.teenage),
          ),
          GestureDetector(
              onTap: () =>
                  navigatorKey.currentState!.pushNamed(DietDescription.id),
              child: balancedDiet(
                  "Age 18-55 years    उम्र 18-55", AssetConstants.adult)),
          GestureDetector(
            onTap: () =>
                navigatorKey.currentState!.pushNamed(DietDescription.id),
            child: balancedDiet(
              "Age 55 years above    उम्र 55-से ऊपर",
              AssetConstants.old,
            ),
          ),
        ]),
      ),
    );
  }
}

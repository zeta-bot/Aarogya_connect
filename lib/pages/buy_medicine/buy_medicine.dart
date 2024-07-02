import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:aarogya_connect/main.dart';
import 'package:aarogya_connect/pages/web_view.dart';
import 'package:aarogya_connect/utils/appbar.dart';
import 'package:aarogya_connect/utils/background_gradient.dart';
import 'package:flutter/material.dart';

class BuyMedicineScreen extends StatelessWidget {
  static const id = "/home/buy_medicine";
  BuyMedicineScreen({super.key});

  List<Map<String, dynamic>> pharmas = [
    {
      "icon_path": AssetConstants.netmeds,
      "name": "NetMeds",
      "url": "https://www.netmeds.com/"
    },
    {
      "icon_path": AssetConstants.pharmEasy,
      "name": "PharmEasy",
      "url": "https://pharmeasy.in/"
    },
    {
      "icon_path": AssetConstants.medlife,
      "name": "MedLife",
      "url": "https://pharmeasy.in/health-wellness/store/medlife-2954143"
    },
    {
      "icon_path": AssetConstants.tata1mg,
      "name": "1mg",
      "url": "https://www.1mg.com/?wpsrc=Google+Organic+Search"
    },
    {
      "icon_path": AssetConstants.apollo,
      "name": "Apollo",
      "url": "https://www.apollopharmacy.in/"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(AssetConstants.buyMedicine, "Buy Medicine"),
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: bgGradient,
        child: Column(
          children: pharmas
              .map(
                (med) => buildMedTile(
                  iconPath: med['icon_path'],
                  name: med['name'],
                  url: med['url'],
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget buildMedTile(
      {required String iconPath, required String name, required String url}) {
    return GestureDetector(
      onTap: () => navigatorKey.currentState!.push(
        MaterialPageRoute(
          builder: (context) => MyWebView(
            url: url,
            title: name,
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: MyColors.homeTileColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: MyColors.orangeColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              iconPath,
              height: 50,
              width: 80,
            ),
            Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: MyStyles.subHeadingStyle,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:aarogya_connect/main.dart';
import 'package:aarogya_connect/pages/buy_medicine/buy_medicine.dart';
import 'package:aarogya_connect/pages/diseases.dart';
import 'package:aarogya_connect/pages/health_video/health_video.dart';
import 'package:aarogya_connect/pages/home/drawer.dart';
import 'package:aarogya_connect/pages/women_health/women_health.dart';
import 'package:aarogya_connect/services/map/balanced_diet.dart';
import 'package:aarogya_connect/services/map/map_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const id = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: MyColors.greenColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AssetConstants.appLogo,
              height: 30,
            ),
            const SizedBox(width: 5),
            Image.asset(
              AssetConstants.appName,
              height: 12,
              fit: BoxFit.cover,
            ),
          ],
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: MyColors.blackColor,
        ),
      ),
      drawer: HomeDrawer(),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Welcome ",
                  style: MyStyles.headingStyle,
                ),
                Text(
                  "Vishal Shashidhar ",
                  style: MyStyles.headingStyle.copyWith(
                    color: MyColors.orangeColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Image.asset(
              AssetConstants.pmJayBanner,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 40),
            buildHomeTileGrid(),
          ],
        ),
      ),
    );
  }

  Widget buildHomeTileGrid() {
    List<Map<String, String>> tiles = [
      {
        "icon_path": AssetConstants.location,
        "title": "Nearby Hospitals",
        "navigation_path": HospitalsScreen.id
      },
      {
        "icon_path": AssetConstants.video,
        "title": "Health Video",
        "navigation_path": HealthVideoScreen.id
      },
      {
        "icon_path": AssetConstants.buyMedicine,
        "title": "Common Diseases",
        "navigation_path": DiseasesScreen.id
      },
      {
        "icon_path": AssetConstants.diet,
        "title": "Balanced Diet",
        "navigation_path": BalancedDiet.id
      },
      {
        "icon_path": AssetConstants.womenHealth,
        "title": "Women Health",
        "navigation_path": WomenHealthScreen.id
      },
      {
        "icon_path": AssetConstants.buyMedicine,
        "title": "Buy Medicine",
        "navigation_path": BuyMedicineScreen.id
      },
    ];
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 2 / 1,
      shrinkWrap: true,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(
        tiles.length,
        (index) => buildHomeTile(
          iconPath: tiles[index]['icon_path']!,
          title: tiles[index]['title']!,
          navigationPath: tiles[index]['navigation_path'],
        ),
      ),
    );
  }

  Widget buildHomeTile({
    required String iconPath,
    required String title,
    required String? navigationPath,
  }) {
    return GestureDetector(
      onTap: () {
        if (navigationPath != null) {
          navigatorKey.currentState!.pushNamed(navigationPath);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: MyColors.homeTileColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: MyColors.orangeColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              height: 30,
            ),
            const SizedBox(width: 5),
            Expanded(
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

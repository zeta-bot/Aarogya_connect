import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/utils/appbar.dart';
import 'package:aarogya_connect/utils/background_gradient.dart';
import 'package:flutter/material.dart';

class DiseasesScreen extends StatelessWidget {
  static const id = "/home/diseases";
  const DiseasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(AssetConstants.buyMedicine, "Common Diseases"),
      body: Container(
        decoration: bgGradient,
        child: Center(
          child: Text("Diseases Screen"),
        ),
      ),
    );
  }
}

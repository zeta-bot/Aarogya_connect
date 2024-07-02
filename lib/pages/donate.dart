import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:flutter/material.dart';

class DonateScreen extends StatelessWidget {
  static const id = "/home/donate";
  const DonateScreen({super.key});

  Widget PaymentMethod(String image, String title) {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(right: 60, left: 50),
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: MyColors.homeTileColor,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: MyColors.orangeColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: 40,
            fit: BoxFit.contain,
          ),
          Text(
            title,
            style: MyStyles.bodyTextStyle.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
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
              AssetConstants.donate,
              fit: BoxFit.contain,
              height: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Donate Us",
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
        padding: const EdgeInsets.all(50).copyWith(bottom: 0),
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
            onTap: () {},
            child: PaymentMethod(AssetConstants.gPay, "Google Pay"),
          ),
          GestureDetector(
            onTap: () {},
            child: PaymentMethod(AssetConstants.paypal, "PayPal"),
          ),
          GestureDetector(
            onTap: () {},
            child: PaymentMethod(AssetConstants.gPay, "PhonePe"),
          ),
          GestureDetector(
            onTap: () {},
            child: PaymentMethod(AssetConstants.gPay, "PayTm"),
          ),
        ]),
      ),
    );
  }
}

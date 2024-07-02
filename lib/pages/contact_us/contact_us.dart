import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  static const id = "/home/contact_us";
  ContactUsScreen({super.key});

  Uri dialNumber = Uri(scheme: 'tel', path: '8168344745');

  callNumber() async {
    await launchUrl(dialNumber);
  }

  directCall() async {
    await FlutterPhoneDirectCaller.callNumber('8168344745');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Wrap(
        children: <Widget>[
          Row(
            children: [
              const Expanded(child: SizedBox()),
              Container(
                color: MyColors.greyColor,
                height: 2,
                width: 100,
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          GestureDetector(
            onTap: () {
              callNumber();
            },
            child: Container(
              height: 55,
              margin: const EdgeInsets.only(
                  top: 20, left: 20, right: 20, bottom: 10),
              decoration: BoxDecoration(
                  color: MyColors.homeTileColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: MyColors.orangeColor)),
              padding: const EdgeInsets.all(10),
              child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      AssetConstants.phone,
                      height: 35,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      "Call Us",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    const Expanded(child: SizedBox()),
                  ]),
            ),
          ),
          Container(
            height: 55,
            margin:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
            decoration: BoxDecoration(
                color: MyColors.homeTileColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: MyColors.orangeColor)),
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  AssetConstants.email,
                  height: 35,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 20),
                const Text(
                  "Email Us",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const Expanded(child: SizedBox()),
              ],
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 70),
            decoration: BoxDecoration(
                color: MyColors.homeTileColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: MyColors.orangeColor)),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      AssetConstants.postBox,
                      height: 36,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      "Post Address",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    const Expanded(child: SizedBox()),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20,
                  ),
                  child: Center(
                    child: Text(
                      'Dihing hostel,IIT Guwahati, Amingaon, North Guwahati, Guwahati, Assam 781039',
                      style: MyStyles.bodyTextStyle
                          .copyWith(letterSpacing: 1, fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:aarogya_connect/main.dart';
import 'package:aarogya_connect/pages/login.dart';
import 'package:aarogya_connect/utils/background_gradient.dart';
import 'package:aarogya_connect/widgets/global/custom_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = "/welcome";
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: bgGradient,
        child: Stack(
          children: [
            Transform.translate(
              offset: const Offset(200, 0),
              child: Image.asset(
                AssetConstants.appLogo,
                scale: 0.01,
                color: MyColors.orangeColor.withOpacity(0.4),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(height: 160),
                Text(
                  "Welcome To",
                  style: MyStyles.headingStyle.copyWith(fontSize: 28),
                ),
                Text(
                  "AAROGYA CONNECT",
                  style: MyStyles.headingStyle.copyWith(
                    fontSize: 32,
                    color: MyColors.orangeColor,
                  ),
                ),
                const SizedBox(height: 100),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'An ',
                        style: MyStyles.headingStyle.copyWith(fontSize: 28),
                      ),
                      TextSpan(
                        text: 'Initiative ',
                        style: MyStyles.headingStyle.copyWith(
                          fontSize: 28,
                          color: MyColors.orangeColor,
                        ),
                      ),
                      TextSpan(
                        text: '\nTo Bridge The Gap And \nBring ',
                        style: MyStyles.headingStyle.copyWith(fontSize: 28),
                      ),
                      TextSpan(
                        text: 'Healthcare',
                        style: MyStyles.headingStyle.copyWith(
                          fontSize: 28,
                          color: MyColors.orangeColor,
                        ),
                      ),
                      TextSpan(
                        text: ' \nCloser To Every \nDoorstep In ',
                        style: MyStyles.headingStyle.copyWith(fontSize: 28),
                      ),
                      TextSpan(
                        text: 'Rural ',
                        style: MyStyles.headingStyle.copyWith(
                          fontSize: 28,
                          color: MyColors.orangeColor,
                        ),
                      ),
                      TextSpan(
                        text: 'India.',
                        style: MyStyles.headingStyle.copyWith(fontSize: 28),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                  child: CustomButton(
                    onTap: () =>
                        navigatorKey.currentState!.pushNamed(LoginScreen.id),
                    label: "Get Started",
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

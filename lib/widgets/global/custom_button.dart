import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Color? labelColor;
  final Widget? leadingIcon;
  const CustomButton({
    super.key,
    required this.label,
    this.height,
    this.margin,
    this.onTap,
    this.backgroundColor,
    this.labelColor,
    this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 60,
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor ?? MyColors.orangeColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              leadingIcon ?? const SizedBox(),
              Transform.translate(
                offset: const Offset(-5, 0),
                child: Text(
                  label,
                  style: MyStyles.subHeadingStyle.copyWith(
                    fontSize: 18,
                    color: labelColor ?? MyColors.whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

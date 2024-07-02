import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final int? maxLength;
  final int? maxLines;
  final TextInputType? keyboardType;
  final bool? isNecessary;
  final Function(String?)? onChange;
  final InputBorder? border;
  final Color? fillColor;
  const CustomTextField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.maxLength,
    this.maxLines,
    this.keyboardType,
    this.onChange,
    this.isNecessary = false,
    this.border,
    this.fillColor,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    Widget? counterBuilder(context,
        {required currentLength, required isFocused, required maxLength}) {
      if (currentLength == 0) {
        return null;
      }
      return Text(
        "$currentLength/$maxLength",
        style: MyStyles.bodyTextStyle.copyWith(fontSize: 8),
      );
    }

    return TextField(
      cursorColor: MyColors.greenColor,
      maxLines: widget.maxLines,
      maxLength: widget.maxLength,
      onChanged: widget.onChange,
      decoration: InputDecoration(
        fillColor: widget.fillColor ?? MyColors.homeTileColor,
        filled: true,
        counter: widget.maxLength != null
            ? counterBuilder(
                context,
                currentLength: widget.controller.text.length,
                isFocused: true,
                maxLength: widget.maxLength,
              )
            : null,
        label: widget.hintText == null
            ? RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: " ${widget.labelText} ",
                      style: MyStyles.bodyTextStyle
                          .copyWith(color: MyColors.lightColor),
                    ),
                    if (widget.isNecessary!)
                      TextSpan(
                        text: ' * ',
                        style: MyStyles.bodyTextStyle
                            .copyWith(color: MyColors.lightColor),
                      ),
                  ],
                ),
              )
            : null,
        hintText: widget.hintText ?? "",
        hintStyle: MyStyles.bodyTextStyle.copyWith(color: MyColors.lightColor),
        labelStyle: MyStyles.bodyTextStyle.copyWith(color: MyColors.lightColor),
        border: widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: MyColors.orangeColor,
              ),
            ),
        enabledBorder: widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: MyColors.orangeColor,
              ),
            ),
        focusedBorder: widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: MyColors.orangeColor,
              ),
            ),
        errorBorder: widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: MyColors.orangeColor,
              ),
            ),
      ),
      keyboardType: widget.keyboardType,
    );
  }
}

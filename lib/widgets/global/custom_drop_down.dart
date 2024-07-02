import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final List<String> items;
  final String? hintText;
  final String? labelText;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final int? index;
  final String? initialValue;
  final BorderRadius? borderRadius;
  final bool? isNecessary;
  final Widget? icon;

  const CustomDropDown({
    super.key,
    required this.items,
    this.hintText,
    this.labelText,
    required this.onChanged,
    this.index,
    this.initialValue,
    this.borderRadius,
    this.validator,
    this.isNecessary = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.homeTileColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonFormField(
        validator: validator,
        menuMaxHeight: 400,
        value: initialValue,
        isExpanded: true,
        decoration: InputDecoration(
          hintText: hintText,
          label: hintText == null
              ? RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: labelText,
                        style: MyStyles.bodyTextStyle,
                      ),
                      isNecessary!
                          ? TextSpan(
                              text: ' * ',
                              style: MyStyles.bodyTextStyle,
                            )
                          : const TextSpan(),
                    ],
                  ),
                )
              : null,
          labelStyle: MyStyles.bodyTextStyle,
          hintStyle: MyStyles.bodyTextStyle,
          errorStyle: MyStyles.bodyTextStyle,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: MyColors.orangeColor, width: 1),
            borderRadius: borderRadius ??
                const BorderRadius.all(
                  Radius.circular(12),
                ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: MyColors.orangeColor, width: 1),
            borderRadius: borderRadius ??
                const BorderRadius.all(
                  Radius.circular(12),
                ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 1),
            borderRadius: borderRadius ??
                const BorderRadius.all(
                  Radius.circular(12),
                ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 1),
            borderRadius: borderRadius ??
                const BorderRadius.all(
                  Radius.circular(12),
                ),
          ),
        ),
        dropdownColor: MyColors.whiteColor,
        isDense: true,
        icon: icon ??
            const Icon(
              Icons.arrow_drop_down,
              size: 28,
            ),
        elevation: 16,
        style: MyStyles.bodyTextStyle,
        onChanged: onChanged,
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

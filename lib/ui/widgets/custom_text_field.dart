import 'package:contacts/core/constant/colors.dart';
import 'package:contacts/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String hintText, label;
  final int? maxLength;
  final TextEditingController? controller;
  final int maxLines;
  final TextInputType inputType;
  final bool isEnabled;
  final List<TextInputFormatter>? textInputFormatters;
  final Widget? suffixWidget;
  final TextInputAction? textInputAction;
  final bool isContentPad;
  final VoidCallback? onTap;
  final List<double>? ltrb;
  final bool autofocus;
  final VoidCallback? onEditingComplete;
  final TextCapitalization textCapitalization;
  final FocusNode? focusNode;
  final bool? hasPrefixText;
  final String? prefixText;
  final bool? hasPrefixIcon;
  final bool isTextCenter;
  final Widget? prefixIcon;
  final TextStyle textStyle, hintStyle;

  const CustomTextField(
      {Key? key,
      required this.hintText,
      required this.label,
      this.controller,
      this.onTap,
      this.maxLength,
      this.maxLines = 1,
      this.textInputFormatters,
      this.inputType = TextInputType.text,
      this.isEnabled = true,
      this.suffixWidget,
      this.textInputAction = TextInputAction.next,
      this.isContentPad = false,
      this.ltrb,
      this.autofocus = false,
      this.onEditingComplete,
      this.textCapitalization = TextCapitalization.none,
      this.focusNode,
      this.prefixText,
      this.hasPrefixText = false,
      this.hasPrefixIcon = false,
      this.prefixIcon,
      this.isTextCenter = false,
      this.textStyle = Styles.tsBlackRegular14,
      this.hintStyle = Styles.tsDisableText14})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TextField(
        textAlign: isTextCenter ? TextAlign.center : TextAlign.start,
        focusNode: focusNode,
        controller: controller,
        textCapitalization: textCapitalization,
        inputFormatters: textInputFormatters,
        textInputAction: textInputAction,
        cursorColor: AppColors.grey,
        style: textStyle,
        maxLength: maxLength,
        maxLines: maxLines,
        keyboardType: inputType,
        enabled: isEnabled,
        readOnly: !isEnabled,
        autofocus: autofocus,
        onEditingComplete: onEditingComplete,
        decoration: InputDecoration(
          prefixIcon: hasPrefixText!
              ? Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Text(
                    prefixText!,
                    style: Styles.tsBlackRegular14,
                  ),
                )
              : hasPrefixIcon!
                  ? Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: prefixIcon,
                    )
                  : null,
          border: const OutlineInputBorder(),
          labelText: label,
          prefixIconConstraints:
              const BoxConstraints(minHeight: 14, minWidth: 15),
          prefixStyle: Styles.tsBlackRegular14,
          isCollapsed: true,
          isDense: true,
          suffixIcon: suffixWidget,
          errorMaxLines: 3,
          counterText: '',
          fillColor: AppColors.white,
          filled: true,
          hintText: hintText,
          contentPadding: isContentPad
              ? EdgeInsets.fromLTRB(ltrb![0], ltrb![1], ltrb![2], ltrb![3])
              : const EdgeInsets.fromLTRB(14, 16, 0, 17),
          hintStyle: hintStyle,
          enabled: isEnabled,
        ),
      ),
    );
  }
}

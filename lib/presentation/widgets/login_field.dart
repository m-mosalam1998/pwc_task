// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({
    super.key,
    required this.textInputType,
    required this.title,
    this.obscureText = false,
    this.onChanged,
    this.validator,
    this.onSaved,
    this.formatter,
    this.suffixIcon,
    required this.bottomPadding,
    this.disableMaxL = false,
    this.titlePadding = EdgeInsets.zero,
    this.gap = 0,
    this.contentPadding,
    this.fillColor,
    this.borderColor,
    this.cursorColor,
    this.textColor,
  });
  final TextInputType textInputType;
  final String title;
  final bool obscureText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final List<TextInputFormatter>? formatter;
  final Widget? suffixIcon;
  final double bottomPadding;
  final bool disableMaxL;
  final EdgeInsets titlePadding;
  final double gap;
  final EdgeInsets? contentPadding;
  final Color? fillColor;
  final Color? cursorColor;
  final Color? borderColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: validator,
      style: TextStyle(
        color: textColor ?? Colors.black,
        fontSize: 14,
      ),
      keyboardType: textInputType,
      cursorColor: cursorColor ?? Colors.black,
      decoration: InputDecoration(
        hintText: title,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? Colors.white,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        suffixIcon: suffixIcon,
        suffixIconConstraints: const BoxConstraints(
            maxHeight: 50, minHeight: 10, minWidth: 10, maxWidth: 25),
        isDense: true,
        counter: const Offstage(),
        contentPadding: contentPadding ??
            EdgeInsets.only(
              bottom: bottomPadding,
              left: 4,
              right: 10,
            ),
        focusColor: Colors.transparent,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? Colors.white,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        filled: true,
        fillColor: fillColor ?? Colors.white,
        focusedBorder: OutlineInputBorder(
          // borderSide: BorderSide(
          //   color: borderColor ?? AppAssets.colors.redInMainPage,
          // ),
          borderRadius: BorderRadius.circular(5),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? Colors.white,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        errorStyle:
            const TextStyle(color: Colors.red, fontSize: 10, height: 0.6),
      ),
    );
  }
}

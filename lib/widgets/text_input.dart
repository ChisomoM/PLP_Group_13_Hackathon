import 'package:flutter/material.dart';
import 'package:village_banking/utils/colors.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  const TextFieldInput(
      {Key? key,
      required this.hintText,
      this.isPass = false,
      required this.textEditingController,
      required this.textInputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBoader = UnderlineInputBorder(
      borderSide: BorderSide(color: mainBlue),
    );
    return TextField(
      style: TextStyle(color: Colors.black),
      controller: textEditingController,
      decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.grey),
          hintText: hintText,
          border: inputBoader,
          focusedBorder: inputBoader,
          enabledBorder: inputBoader,
          filled: false,
          contentPadding: EdgeInsets.only(
            top: 12,
          )),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}

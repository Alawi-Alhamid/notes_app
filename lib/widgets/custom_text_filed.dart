import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hintText,  this.maxLine=1}) : super(key: key);
   final String hintText;
   final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(

        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        border: buildBorder() ,
      enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),

      ),
    );
  }
  OutlineInputBorder buildBorder([color]) {
   return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide:  BorderSide(color:color ?? Colors.white),
    );

  }
}

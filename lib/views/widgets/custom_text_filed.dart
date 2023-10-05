import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(

      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
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

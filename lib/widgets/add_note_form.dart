import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_filed.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey=GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children:  [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
              onSaved: (value){
                title=value;
              },

              hintText: 'Title'),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value){
              subTitle=value;
            },
            hintText: 'Content',
            maxLine: 5,
          ),

          const SizedBox(
            height: 32,
          ),
          CustomButton(onTap: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            } else{
              autovalidateMode=AutovalidateMode.always;
              setState(() {

              });
            }
          },),

          SizedBox(
            height: 16,
          ),

        ],
      ),
    );
  }
}

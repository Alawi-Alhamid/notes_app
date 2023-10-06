import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_filed.dart';
class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children:  const [
              SizedBox(
                height: 50,
              ),
              CustomAppBar(title: 'Edit Notes',icon: Icons.check,),
              SizedBox(
                height: 50,
              ),
              CustomTextField(hintText: 'Title'),
              SizedBox(
                height: 16,
              ),
              CustomTextField(hintText: 'Content',maxLine: 5,)

            ],
          ),
        )
    );
  }
}

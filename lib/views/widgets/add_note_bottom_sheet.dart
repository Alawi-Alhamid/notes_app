import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 32,
          ),
          CustomTextField(hintText: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: 'Content',
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}

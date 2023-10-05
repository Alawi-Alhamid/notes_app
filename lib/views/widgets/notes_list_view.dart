import 'package:flutter/material.dart';

import 'custom_note_item.dart';
class NoteListView extends StatelessWidget {
  const NoteListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return  const Padding(padding:EdgeInsets.symmetric(vertical: 8),
      child:NoteItem()
      );
    });
  }
}
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';
class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      body: const NotesViewBody(),
    );
  }
}

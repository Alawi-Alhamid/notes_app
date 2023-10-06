import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';

import '../../model/note_model.dart';

import 'add_note_state.dart';



class AddNoteCubit extends Cubit<AddNoteState>{

  AddNoteCubit(): super(AddNotesInitial());

  addNote(NoteModel note) async{
 emit(AddNoteLoading());
try{

  var notesBox=Hive.box<NoteModel>(kNotesBox);
emit(AddNoteSuccess());
  await notesBox.add(note);

} catch (e) {
  emit(AddNoteFailure(e.toString()));
}
  }
}
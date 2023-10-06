

import 'package:flutter/foundation.dart';

//part 'add_note_cubit.dart';
@immutable
abstract class AddNoteState {}

class AddNotesInitial extends AddNoteState{}
class AddNoteLoading extends AddNoteState{}
class AddNoteSuccess extends AddNoteState{}
class AddNoteFailure extends AddNoteState{
  final String errMessage;
  AddNoteFailure(this.errMessage);
}
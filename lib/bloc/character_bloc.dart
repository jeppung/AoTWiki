import 'package:aotwiki/bloc/character_ui_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CharacterEvent {}

class RequestCharacters extends CharacterEvent {}

class RequestCharactersError extends CharacterEvent {}

class BlocCharacter extends Bloc<CharacterEvent, CharacterUiState> {
  BlocCharacter() : super(CharacterUiState(uiState: UiState.Empty)) {
    on<RequestCharacters>(
        (event, emit) => emit(CharacterUiState(uiState: UiState.Loading)));
    on<RequestCharactersError>(
        (event, emit) => CharacterUiState(uiState: UiState.Error));
  }
}

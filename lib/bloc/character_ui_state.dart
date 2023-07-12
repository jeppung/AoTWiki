enum UiState { Requesting, Loading, Success, Error, Empty }

class CharacterUiState {
  UiState uiState;

  CharacterUiState({required this.uiState});
}

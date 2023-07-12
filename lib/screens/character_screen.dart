import 'package:aotwiki/bloc/character_bloc.dart';
import 'package:aotwiki/bloc/character_ui_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  void initState() {
    super.initState();
    try {
      BlocProvider.of<BlocCharacter>(context).add(RequestCharacters());
      Dio().get("https://api.attackontitanapi.com/characters");
    } catch (e) {
      BlocProvider.of<BlocCharacter>(context).add(RequestCharactersError());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocCharacter, CharacterUiState>(
      builder: (context, state) {
        switch (state) {}
      },
    );
  }
}

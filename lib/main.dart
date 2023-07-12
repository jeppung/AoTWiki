import 'package:aotwiki/bloc/character_bloc.dart';
import 'package:aotwiki/screens/character_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlocCharacter(),
      child: Scaffold(
          appBar: AppBar(
            title: Text("Aot Wiki"),
          ),
          body: CharacterScreen(),
          bottomNavigationBar: NavigationBar(
            destinations: const <NavigationDestination>[
              NavigationDestination(
                selectedIcon: Icon(Icons.person),
                icon: Icon(Icons.person_outline),
                label: 'Characters',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.person),
                icon: Icon(Icons.person_outlined),
                label: 'Titans',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.network_wifi),
                icon: Icon(Icons.network_wifi),
                label: 'Org',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.location_on_outlined),
                icon: Icon(Icons.location_on_outlined),
                label: 'Locations',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.list_alt),
                icon: Icon(Icons.list_alt),
                label: 'Episodes',
              ),
            ],
          )),
    );
  }
}

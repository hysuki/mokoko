import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:mokoko/models/character.dart';
import 'package:mokoko/mokoko.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final mokoko = Mokoko('<API_KEY>');

  @override
  void initState() {
    super.initState();
  }

  void getCharacters() async {
    print('getCharacters');
    List<Character>? characters = await mokoko.characters('리페노스');
    if (characters != null) {
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            TextButton(
              onPressed:() => {getCharacters()},
              child: Text('Get Characters'),
            ),
          ],
        )
      ),
    );
  }
}

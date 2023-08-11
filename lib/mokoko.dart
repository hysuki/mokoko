import 'dart:convert';

import 'package:mokoko/models/character.dart';
import 'package:http/http.dart' as http;

const base = 'developer-lostark.game.onstove.com';

class Mokoko {
  final String apiKey;

  Mokoko(this.apiKey);

  Future<List<Character>?> characters(String characterName) async {
    final client = http.Client();
    final path = '/characters/$characterName/siblings';
    final url = Uri.https(base, path);

    final response = await http.get(Uri.https(base, path), headers: {
      "accept": "application/json",
      "authorization": "bearer $apiKey",
    });

    if (response.statusCode == 200) {
      if (response.body.isEmpty || response.body == '[]') {
        return null;
      }
      final json = jsonDecode(response.body) as List; // Parse string as JSON
      final characters = json.map((e) => Character.fromJson(e)).toList();

      return characters;
    }
    return null;
  }
}

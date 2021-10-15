import 'dart:convert';
import 'package:midterm_project/models/character.dart';
import 'package:http/http.dart' as http;

class CharacterApi {
  static Future<List<dynamic>> getCharacter() async {
    var uri = Uri.https("api.genshin.dev", "/characters");

    final response = await http.get(uri);

    List<dynamic> data = json.decode(response.body);

    return data;
  }

  static Future<List<Character>> getCharacterDetails(data) async {
    var link = "api.genshin.dev";
    List temp = [];

    for (var i in data) {
      String path = "characters/${i.toString()}";
      var uri = Uri.https(link, path);

      final response = await http.get(uri);
      Map characterData = jsonDecode(response.body);

      if (characterData.containsKey("nation")) {
        characterData['urlName'] =
            "https://api.genshin.dev/characters/${i.toString()}/gacha-splash";
        temp.add(characterData);
      }
    }

    return Character.charactersFromSnapshot(temp);
  }
}

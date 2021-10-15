import 'package:flutter/material.dart';
import 'package:midterm_project/models/character.api.dart';
import 'package:midterm_project/models/character.dart';
import 'package:midterm_project/widgets/CharacterCard.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Character>? characterDetails;
  List<dynamic>? characters;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getCharacters();
  }

  Future<void> getCharacters() async {
    characters = await CharacterApi.getCharacter();
    characterDetails = await CharacterApi.getCharacterDetails(characters);
     setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                AssetImage("assets/intertwined_fate.png"),
              ),
              SizedBox(width: 10),
              Text("Genshin Impact"),
            ],
          ),
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: characterDetails?.length,
                itemBuilder: (context, index) {
                  return CharacterCard(
                      characterName: characterDetails?[index].characterName,
                      vision: characterDetails?[index].vision,
                      nation: characterDetails?[index].nation,
                      constellation: characterDetails?[index].constellation,
                      rarity: characterDetails?[index].rarity,
                      urlName: characterDetails?[index].urlName);
                }));
  }
}



// Container(
//           child: CharacterCard(
//               characterName: "Albedo",
//               vision: "Geo",
//               nation: "Mondstadt",
//               constellation: "Constellation",
//               rarity: 5,
//               splashArtURL:
//                   "https://api.genshin.dev/characters/albedo/gacha-splash")),
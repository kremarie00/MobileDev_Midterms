class Character {
  final String characterName;
  final String vision;
  final String? nation;
  final String constellation;
  final int rarity;
  final String urlName;
  // final String visionArtURL;

  Character({
    required this.characterName,
    required this.vision,
    this.nation,
    required this.constellation,
    required this.rarity,
    required this.urlName,
    // required this.visionArtURL,
  });

  factory Character.fromJson(dynamic json) {
    return Character(
      characterName: json['name'] as String,
      vision: json['vision'] as String,
      nation: json['nation'] as String,
      constellation: json['constellation'] as String,
      rarity: json['rarity'] as int,
      urlName: json['urlName'] as String,
    );
  }

  static List<Character> charactersFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Character.fromJson(data);
    }).toList();
  }
}

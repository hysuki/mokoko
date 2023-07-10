class Character {
  String? serverName;
  String? characterName;
  int? characterLevel;
  String? characterClassName;
  String? itemAvgLevel;
  String? itemMaxLevel;

  Character(
      {this.serverName,
        this.characterName,
        this.characterLevel,
        this.characterClassName,
        this.itemAvgLevel,
        this.itemMaxLevel});

  Character.fromJson(Map<String, dynamic> json) {
    serverName = json['ServerName'];
    characterName = json['CharacterName'];
    characterLevel = json['CharacterLevel'];
    characterClassName = json['CharacterClassName'];
    itemAvgLevel = json['ItemAvgLevel'];
    itemMaxLevel = json['ItemMaxLevel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ServerName'] = this.serverName;
    data['CharacterName'] = this.characterName;
    data['CharacterLevel'] = this.characterLevel;
    data['CharacterClassName'] = this.characterClassName;
    data['ItemAvgLevel'] = this.itemAvgLevel;
    data['ItemMaxLevel'] = this.itemMaxLevel;
    return data;
  }
}

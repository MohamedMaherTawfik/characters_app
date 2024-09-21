class Character {
  late int CharId;
  late String name;
  late String statusIfDeadOrAlive;
  late String species;
  late String gender;
  late String type;
  late String image;
  late String createdAt;
  late String Character_url;
  late Map origin;
  late Map location;

  Character.fromjson(Map<String, dynamic> json) {
    CharId = json["id"];
    name = json["name"];
    statusIfDeadOrAlive = json["status"];
    species = json["species"];
    gender = json["gender"];
    type = json["type"];
    image = json["image"];
    createdAt = json["created"];
    Character_url = json["url"];
    origin = json["origin"];
    location = json["location"];
  }
}

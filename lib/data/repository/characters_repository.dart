import 'package:bloc_start/data/models/characters.dart';
import 'package:bloc_start/data/web_services/character_web_services.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository({required this.charactersWebServices});

  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters
        .map((character) => Character.fromjson(character))
        .toList();
  }
}

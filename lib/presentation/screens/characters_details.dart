import 'package:bloc_start/constants/my_colors.dart';
import 'package:bloc_start/data/models/characters.dart';
import 'package:flutter/material.dart';

class CharacterDetailsScreen extends StatelessWidget {
  final Character character;
  const CharacterDetailsScreen({super.key, required this.character});

  Widget CharacterInfo(String title, String value) {
    return RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: TextStyle(
                color: MyColors.myWhite,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          TextSpan(
            text: value,
            style: TextStyle(
              color: MyColors.myWhite,
              fontSize: 18,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDivider(double endIndent) {
    return Divider(
      color: MyColors.myYellow,
      height: 30,
      endIndent: endIndent,
      thickness: 2,
    );
  }

  originList(originMap) {
    return character.origin.entries
        .map((originMap) {
          return originMap.value;
        })
        .toList()
        .join(' , ');
  }

  locationList(locationMap) {
    return character.location.entries
        .map((locationMap) {
          return locationMap.value;
        })
        .toList()
        .join(' , ');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: MyColors.myGrey,
        appBar: AppBar(
          backgroundColor: MyColors.myYellow,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
          title: Text(
            character.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: [
              Container(
                child: Image.network(
                  character.image,
                  width: double.infinity,
                  height: size.height * 0.4,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CharacterInfo(
                'Status: ',
                character.statusIfDeadOrAlive,
              ),
              buildDivider(size.width * 0.76),
              CharacterInfo('Species: ', character.species),
              buildDivider(size.width * 0.73),
              CharacterInfo('Gender: ', character.gender),
              buildDivider(size.width * 0.74),
              CharacterInfo('Origin: ', originList(character.origin)),
              buildDivider(size.width * 0.76),
              CharacterInfo('Location: ', locationList(character.location)),
              buildDivider(size.width * 0.70),
              CharacterInfo('Created: ', character.createdAt),
              buildDivider(size.width * 0.73),
              CharacterInfo('url: ', character.Character_url),
              buildDivider(size.width * 0.86),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:bloc_start/buisness_layer/cubit/characters_cubit.dart';
import 'package:bloc_start/constants/strings.dart';
import 'package:bloc_start/data/repository/characters_repository.dart';
import 'package:bloc_start/data/web_services/character_web_services.dart';
import 'package:bloc_start/presentation/screens/characters_details.dart';
import 'package:bloc_start/presentation/screens/characters_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository =
        CharactersRepository(charactersWebServices: CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => charactersCubit,
            child: CharactersScreen(),
          ),
        );

      case characterDetailScreen:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}

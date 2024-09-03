import 'package:bloc_start/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(RickAndMorty(
    appRouter: AppRouter(),
  ));
}

class RickAndMorty extends StatelessWidget {
  final AppRouter appRouter;

  const RickAndMorty({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}

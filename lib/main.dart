import 'package:deeplinks_with_gorouter/views/details.dart';
import 'package:deeplinks_with_gorouter/views/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Deeplinks with GoRouter',
      routerConfig: router,
    );
  }

  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MainScreen(),
        routes: [
          GoRoute(
            path: "details/:itemId",
            builder: (context, state) => DetailsScreen(
              id: int.parse(state.pathParameters['itemId']!),
            ),
          )
        ],
      )
    ],
  );
}

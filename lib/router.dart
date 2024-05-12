import 'package:go_router/go_router.dart';

import 'pages/bio_page/bio_page.dart';
import 'pages/games_page/games_page.dart';
import 'pages/home_page/home_page.dart';

final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: "bio",
          builder: (context, state) => const BioPage(),
        ),
        GoRoute(
          path: "games",
          builder: (context, state) => const GamesPage(),
        ),
      ],
    ),
  ],
);

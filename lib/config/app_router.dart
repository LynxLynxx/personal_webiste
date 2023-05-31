import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_website/screens/home_screen.dart';
import 'package:personal_website/screens/resume_screen.dart';
import 'package:personal_website/screens/work_screen.dart';

class AppRouter {
  static const home = "/";
  static const resume = "/resume";
  static const work = "/work";

  static final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: resume,
        builder: (context, state) => const ResumeScreen(),
      ),
      GoRoute(
        path: work,
        builder: (context, state) => const WorkScreen(),
      ),
    ],
    initialLocation: home,
    // TODO: Stworzenie strony 404
    errorBuilder: (context, state) => Container(),
  );

  static GoRouter get router => _router;
}

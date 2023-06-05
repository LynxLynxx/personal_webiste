import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_website/screens/home_screen.dart';
import 'package:personal_website/screens/more_work_screen.dart';
import 'package:personal_website/screens/resume_screen.dart';
import 'package:personal_website/screens/work_screen.dart';

class AppRouter {
  static const home = "/";
  static const resume = "/resume";
  static const work = "/work";
  static const more = "/more";

  static final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: home,
        builder: (context, state) => const HomeScreen(),
        pageBuilder: (BuildContext context, GoRouterState state) =>
            buildPageWithoutAnimation(
          context: context,
          state: state,
          child: const HomeScreen(),
        ),
      ),
      GoRoute(
        path: resume,
        builder: (context, state) => const ResumeScreen(),
        pageBuilder: (BuildContext context, GoRouterState state) =>
            buildPageWithoutAnimation(
          context: context,
          state: state,
          child: const ResumeScreen(),
        ),
      ),
      GoRoute(
        path: work,
        builder: (context, state) => const WorkScreen(),
        pageBuilder: (BuildContext context, GoRouterState state) =>
            buildPageWithoutAnimation(
          context: context,
          state: state,
          child: const WorkScreen(),
        ),
      ),
      GoRoute(
        path: more,
        builder: (context, state) => const MoreWork(),
        // pageBuilder: (BuildContext context, GoRouterState state) =>
        //     buildPageWithoutAnimation(
        //   context: context,
        //   state: state,
        //   child: const MoreWork(),
        // ),
      ),
    ],
    initialLocation: home,
    // TODO: Stworzenie strony 404
    errorBuilder: (context, state) => Container(),
  );

  static GoRouter get router => _router;
}

CustomTransitionPage buildPageWithoutAnimation({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          child);
}

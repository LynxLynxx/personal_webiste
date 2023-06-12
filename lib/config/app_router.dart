import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_website/screens/home_screen.dart';
import 'package:personal_website/screens/more_work_screen.dart';
import 'package:personal_website/screens/resume_screen.dart';
import 'package:personal_website/screens/work_screen.dart';

import '../const/projects.dart';

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
        path: projects[0].moreUrl,
        builder: (context, state) {
          return MoreWork(
              urlImages: projects[0].urlAssets,
              projectTitle: projects[0].title,
              projectDescription: projects[0].description,
              problemSolved: projects[0].problemSolved);
        },
      ),
      GoRoute(
        path: projects[2].moreUrl,
        builder: (context, state) {
          return MoreWork(
              urlImages: projects[2].urlAssets,
              projectTitle: projects[2].title,
              projectDescription: projects[2].description,
              problemSolved: projects[2].problemSolved);
        },
      ),
      GoRoute(
        path: projects[3].moreUrl,
        builder: (context, state) {
          return MoreWork(
              urlImages: projects[3].urlAssets,
              projectTitle: projects[3].title,
              projectDescription: projects[3].description,
              problemSolved: projects[3].problemSolved);
        },
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

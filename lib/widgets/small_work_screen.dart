import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/theme_bloc/cubit/theme_cubit.dart';
import '../config/app_router.dart';

class SmallWorkScreen extends StatelessWidget {
  const SmallWorkScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                GoRouter.of(context).go(AppRouter.home);
              },
              title: const Text("Home"),
            ),
            ListTile(
              onTap: () {
                GoRouter.of(context).go(AppRouter.resume);
              },
              title: const Text("Resume"),
            ),
            ListTile(
              onTap: () {
                GoRouter.of(context).go(AppRouter.work);
              },
              title: const Text("Work"),
            ),
            ListTile(onTap: () {
              if (BlocProvider.of<ThemeCubit>(context).state is ThemeInitial ||
                  BlocProvider.of<ThemeCubit>(context).state is ThemeLight) {
                BlocProvider.of<ThemeCubit>(context)
                    .switchTheme(ThemeMode.dark);
              } else if (BlocProvider.of<ThemeCubit>(context).state
                  is ThemeDark) {
                BlocProvider.of<ThemeCubit>(context)
                    .switchTheme(ThemeMode.light);
              }
            }, leading: BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                if (state is ThemeLight || state is ThemeInitial) {
                  return const Icon(Icons.dark_mode);
                } else {
                  return const Icon(Icons.light_mode);
                }
              },
            ))
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}

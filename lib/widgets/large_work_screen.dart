import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_website/config/app_router.dart';

import '../bloc/theme_bloc/cubit/theme_cubit.dart';

class LargeWorkScreen extends StatelessWidget {
  const LargeWorkScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    GoRouter.of(context).go(AppRouter.home);
                  },
                  child: const Text("Home"),
                ),
                TextButton(
                  onPressed: () {
                    GoRouter.of(context).go(AppRouter.resume);
                  },
                  child: const Text("Resume"),
                ),
                TextButton(
                  onPressed: () {
                    GoRouter.of(context).go(AppRouter.work);
                  },
                  child: const Text("Work"),
                ),
                IconButton(onPressed: () {
                  if (BlocProvider.of<ThemeCubit>(context).state
                          is ThemeInitial ||
                      BlocProvider.of<ThemeCubit>(context).state
                          is ThemeLight) {
                    BlocProvider.of<ThemeCubit>(context)
                        .switchTheme(ThemeMode.dark);
                  } else if (BlocProvider.of<ThemeCubit>(context).state
                      is ThemeDark) {
                    BlocProvider.of<ThemeCubit>(context)
                        .switchTheme(ThemeMode.light);
                  }
                }, icon: BlocBuilder<ThemeCubit, ThemeState>(
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
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}

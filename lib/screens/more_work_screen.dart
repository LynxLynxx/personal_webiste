import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/theme_bloc/cubit/theme_cubit.dart';

class MoreWork extends StatelessWidget {
  const MoreWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(onPressed: () {
              if (BlocProvider.of<ThemeCubit>(context).state is ThemeInitial ||
                  BlocProvider.of<ThemeCubit>(context).state is ThemeLight) {
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
            )),
          )
        ],
      ),
      body: const Card(
        child: ListTile(title: Text("More info")),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/theme_bloc/cubit/theme_cubit.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final ThemeCubit themeCubit = ThemeCubit();
    return SizedBox(
      height: 50,
      child: Row(
        children: [
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
                  onPressed: () {},
                  child: const Text("Home"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Resume"),
                ),
                TextButton(
                  onPressed: () {},
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
    );
  }
}

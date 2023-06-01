import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/bloc/theme_bloc/cubit/theme_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.background,
              Theme.of(context).colorScheme.primaryContainer,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const NavBar(),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "My name is",
                          style: GoogleFonts.robotoMono(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Ryszard Schossler",
                          style: GoogleFonts.robotoMono(
                              fontWeight: FontWeight.w900, fontSize: 24),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          "I'm a mobile software engineer and in my free time I like to work on IoT embedded system projects. I completed my master's studies in mechatronics at the University of Rzeszów. At the end of my studies, In 2020 I started working in a company that deals with R&D projects as a mechatronics engineer. My task was to create software for embedded systems and mobile applications. I really like learning new technologies. ",
                          style: GoogleFonts.robotoMono(),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.onBackground,
                    radius: 200,
                    backgroundImage: const AssetImage(
                      'assets/img/me.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Center(
                child: Text(
                  "Found me on my socials:",
                  style: GoogleFonts.robotoMono(
                      fontWeight: FontWeight.w600, letterSpacing: 1.5),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: SizedBox(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.github)),
                      IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.linkedin)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

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

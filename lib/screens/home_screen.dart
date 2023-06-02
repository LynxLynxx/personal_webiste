import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/widgets/responsive.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;
import '../bloc/theme_bloc/cubit/theme_cubit.dart';
import '../config/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isLargeScreen(context)
        ? const LargeHomeScreen()
        : const SmallHomeScreen();
  }
}

class LargeHomeScreen extends StatelessWidget {
  const LargeHomeScreen({
    super.key,
  });

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
                children: [
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
                              "I'm a mobile software engineer and in my free time I like to work on IoT embedded system projects. I completed my master's studies in mechatronics at the University of Rzeszów. At the end of my studies (in 2020) I started working in a company that deals with R&D projects as a mechatronics engineer. My task was to create software for embedded systems and mobile applications. I really like learning new technologies. You can see them in Resume tab!",
                              style: GoogleFonts.robotoMono(),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor:
                            Theme.of(context).colorScheme.onBackground,
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
                              onPressed: () {
                                js.context.callMethod(
                                    'open', ['https://github.com/LynxLynxx']);
                              },
                              icon: const FaIcon(FontAwesomeIcons.github)),
                          IconButton(
                              onPressed: () {
                                js.context.callMethod('open', [
                                  'https://www.linkedin.com/in/ryszard-schossler-578b0b225/'
                                ]);
                              },
                              icon: const FaIcon(FontAwesomeIcons.linkedin)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SmallHomeScreen extends StatelessWidget {
  const SmallHomeScreen({
    super.key,
  });

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
          appBar: AppBar(
              // actions: [
              //   Expanded(
              //     flex: 2,
              //     child: Container(),
              //   ),
              //   Expanded(
              //     flex: 1,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         TextButton(
              //           onPressed: () {
              //             GoRouter.of(context).go(AppRouter.home);
              //           },
              //           child: const Text("Home"),
              //         ),
              //         TextButton(
              //           onPressed: () {
              //             GoRouter.of(context).go(AppRouter.resume);
              //           },
              //           child: const Text("Resume"),
              //         ),
              //         TextButton(
              //           onPressed: () {
              //             GoRouter.of(context).go(AppRouter.work);
              //           },
              //           child: const Text("Work"),
              //         ),
              //         IconButton(onPressed: () {
              //           if (BlocProvider.of<ThemeCubit>(context).state
              //                   is ThemeInitial ||
              //               BlocProvider.of<ThemeCubit>(context).state
              //                   is ThemeLight) {
              //             BlocProvider.of<ThemeCubit>(context)
              //                 .switchTheme(ThemeMode.dark);
              //           } else if (BlocProvider.of<ThemeCubit>(context).state
              //               is ThemeDark) {
              //             BlocProvider.of<ThemeCubit>(context)
              //                 .switchTheme(ThemeMode.light);
              //           }
              //         }, icon: BlocBuilder<ThemeCubit, ThemeState>(
              //           builder: (context, state) {
              //             if (state is ThemeLight || state is ThemeInitial) {
              //               return const Icon(Icons.dark_mode);
              //             } else {
              //               return const Icon(Icons.light_mode);
              //             }
              //           },
              //         ))
              //       ],
              //     ),
              //   ),
              // ],

              ),
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
          body: Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
            child: SingleChildScrollView(
              child: Column(
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
                    "I'm a mobile software engineer and in my free time I like to work on IoT embedded system projects. I completed my master's studies in mechatronics at the University of Rzeszów. At the end of my studies (in 2020) I started working in a company that deals with R&D projects as a mechatronics engineer. My task was to create software for embedded systems and mobile applications. I really like learning new technologies. You can see them in Resume tab!",
                    style: GoogleFonts.robotoMono(),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.onBackground,
                    radius: 200,
                    backgroundImage: const AssetImage(
                      'assets/img/me.png',
                    ),
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
                              onPressed: () {
                                js.context.callMethod(
                                    'open', ['https://github.com/LynxLynxx']);
                              },
                              icon: const FaIcon(FontAwesomeIcons.github)),
                          IconButton(
                              onPressed: () {
                                js.context.callMethod('open', [
                                  'https://www.linkedin.com/in/ryszard-schossler-578b0b225/'
                                ]);
                              },
                              icon: const FaIcon(FontAwesomeIcons.linkedin)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class smallScreenHomeTab extends StatelessWidget {
  const smallScreenHomeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
            "I'm a mobile software engineer and in my free time I like to work on IoT embedded system projects. I completed my master's studies in mechatronics at the University of Rzeszów. At the end of my studies (in 2020) I started working in a company that deals with R&D projects as a mechatronics engineer. My task was to create software for embedded systems and mobile applications. I really like learning new technologies. You can see them in Resume tab!",
            style: GoogleFonts.robotoMono(),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20),
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.onBackground,
            radius: 200,
            backgroundImage: const AssetImage(
              'assets/img/me.png',
            ),
          ),
        ],
      ),
    );
  }
}

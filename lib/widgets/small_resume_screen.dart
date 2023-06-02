import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bloc/theme_bloc/cubit/theme_cubit.dart';
import '../config/app_router.dart';

class SmallResumeScreen extends StatelessWidget {
  const SmallResumeScreen({
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              Center(
                child: Text(
                  'About Me',
                  style: GoogleFonts.robotoMono(fontSize: 24),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 5,
                width: 100,
                child: const Text(""),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 550,
                child: Text(
                  "Here you will find more information about me, what I do, and my current skills mostly in terms of programming and technology.",
                  style: GoogleFonts.roboto(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 500,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "My Skills",
                            style: GoogleFonts.robotoMono(fontSize: 24),
                            textAlign: TextAlign.left,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 5,
                            width: 100,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 3,
                          crossAxisSpacing: 3,
                          childAspectRatio: 1.5,
                        ),
                        children: [
                          SvgPicture.network(
                            'https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg',
                            semanticsLabel: 'A shark?!',
                            placeholderBuilder: (BuildContext context) =>
                                Container(
                                    padding: const EdgeInsets.all(30.0),
                                    child: const CircularProgressIndicator()),
                          ),
                          SvgPicture.network(
                            'https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg',
                            semanticsLabel: 'A shark?!',
                            placeholderBuilder: (BuildContext context) =>
                                Container(
                                    padding: const EdgeInsets.all(30.0),
                                    child: const CircularProgressIndicator()),
                          ),
                          SvgPicture.asset('assets/img/pluginIcon.svg'),
                          SvgPicture.network(
                            'https://www.vectorlogo.zone/logos/firebase/firebase-icon.svg',
                            semanticsLabel: 'A shark?!',
                            placeholderBuilder: (BuildContext context) =>
                                Container(
                                    padding: const EdgeInsets.all(30.0),
                                    child: const CircularProgressIndicator()),
                          ),
                          SvgPicture.network(
                            'https://www.vectorlogo.zone/logos/supabase/supabase-icon.svg',
                            semanticsLabel: 'A shark?!',
                            placeholderBuilder: (BuildContext context) =>
                                Container(
                                    padding: const EdgeInsets.all(30.0),
                                    child: const CircularProgressIndicator()),
                          ),
                          SvgPicture.network(
                            'https://www.vectorlogo.zone/logos/git-scm/git-scm-icon.svg',
                            semanticsLabel: 'A shark?!',
                            placeholderBuilder: (BuildContext context) =>
                                Container(
                                    padding: const EdgeInsets.all(30.0),
                                    child: const CircularProgressIndicator()),
                          ),
                          SvgPicture.network(
                            'https://www.vectorlogo.zone/logos/github/github-icon.svg',
                            semanticsLabel: 'A shark?!',
                            placeholderBuilder: (BuildContext context) =>
                                Container(
                                    padding: const EdgeInsets.all(30.0),
                                    child: const CircularProgressIndicator()),
                          ),
                          SvgPicture.network(
                            'https://www.vectorlogo.zone/logos/gitlab/gitlab-icon.svg',
                            semanticsLabel: 'A shark?!',
                            placeholderBuilder: (BuildContext context) =>
                                Container(
                                    padding: const EdgeInsets.all(30.0),
                                    child: const CircularProgressIndicator()),
                          ),
                          SvgPicture.network(
                            'https://www.vectorlogo.zone/logos/python/python-icon.svg',
                            semanticsLabel: 'A shark?!',
                            placeholderBuilder: (BuildContext context) =>
                                Container(
                                    padding: const EdgeInsets.all(30.0),
                                    child: const CircularProgressIndicator()),
                          ),
                          SvgPicture.network(
                            'https://www.vectorlogo.zone/logos/swift/swift-icon.svg',
                            semanticsLabel: 'A shark?!',
                            placeholderBuilder: (BuildContext context) =>
                                Container(
                                    padding: const EdgeInsets.all(30.0),
                                    child: const CircularProgressIndicator()),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Center(
                child: SizedBox(
                  width: 500,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          "Experience",
                          style: GoogleFonts.robotoMono(fontSize: 24),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 5,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: 500,
                child: Card(
                  child: ListTile(
                    title: Text(
                      "Signum • 2020 - 2023",
                      style: GoogleFonts.robotoMono(),
                    ),
                    subtitle: Text(
                      "Creating software for mobile applications and embedded systems in R&D projects. Taking part in meetings aimed at defining technological solutions for a given issue from the IoT project. Creating technical documentation and user manuals for created projects. Technologies used: Flutter, Dart, Micropython, Latex, Python, Javascript, REST Api, MQTT, Git, Gitlab. During the period of my work, I participated in over 10 projects.",
                      style: GoogleFonts.robotoMono(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: 500,
                child: Card(
                  child: ListTile(
                    title: Text(
                      "University of Rzeszów • 2022 - 2023",
                      style: GoogleFonts.robotoMono(),
                    ),
                    subtitle: Text(
                      "Conducting laboratory classes in the field of programming languages and Internet technologies. Where I was teaching students about client-server communication, creating frontend aplications, etc.",
                      style: GoogleFonts.robotoMono(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}

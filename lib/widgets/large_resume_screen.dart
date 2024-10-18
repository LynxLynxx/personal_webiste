import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bloc/theme_bloc/cubit/theme_cubit.dart';
import '../config/app_router.dart';

class LargeResumeScreen extends StatelessWidget {
  const LargeResumeScreen({
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
                          crossAxisCount: 5,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
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
                      "H2B Group IT Consulting • 2023 - Present",
                      style:
                          GoogleFonts.robotoMono(fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "• As an outsourced employee, I supported/managed teams in companies such as Appwrite, Omega Pilzno, Speednet, City of Poznan, University of Lublin\n• Manually publishing applications to the Google Play Store and Apple App Store but also creating CI/CD for this task.\n• Distributing apps via Firebase App Distribution and Testflight to testers",
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
                      "Signum • 2020 - 2023",
                      style:
                          GoogleFonts.robotoMono(fontWeight: FontWeight.w800),
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
                      style:
                          GoogleFonts.robotoMono(fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "Conducting laboratory classes in the field of programming languages and Internet technologies. Where I was teaching students about client-server communication, creating frontend aplications, etc.",
                      style: GoogleFonts.robotoMono(),
                    ),
                  ),
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
                          "Education",
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
                      "Master of Mechatronics • University of Rzeszów",
                      style: GoogleFonts.robotoMono(),
                    ),
                    subtitle: Text(
                      "I have successfully completed my Master's degree in Mechatronics with a specialization in measurement and control systems. This program equipped me with comprehensive knowledge and expertise in integrating mechanical, electrical, and computer engineering principles for precise measurements and efficient control. Through rigorous coursework and hands-on projects, I have developed strong skills in designing, calibrating, and optimizing measurement instruments and control systems. My educational background in Mechatronics, with a focus on measurement and control systems, uniquely positions me to contribute to projects and industries that demand expertise in advanced technological solutions.",
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
                      "Engineer of Mechatronics • University of Rzeszów",
                      style: GoogleFonts.robotoMono(),
                    ),
                    subtitle: Text(
                      "I have successfully completed my Bachelor's degree in Mechatronics with a specialization in embedded systems. Throughout my studies, I gained comprehensive knowledge and practical skills in designing and developing embedded systems for various applications. With a strong background in Mechatronics and a specialization in embedded systems, I possess a deep understanding of IoT technologies and their integration into various applications. I am proficient in designing and implementing IoT architectures, connecting devices to cloud platforms, and developing custom IoT applications. My expertise includes working with IoT protocols such as MQTT and REST API, utilizing sensors and actuators for data collection and control, and developing intuitive user interfaces for IoT applications. Additionally, I have experience in developing firmware for IoT devices, optimizing power consumption, and ensuring data security in IoT systems. With my skills in creating IoT projects and apps, I am well-equipped to contribute to the rapidly evolving field of connected devices and smart solutions.",
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

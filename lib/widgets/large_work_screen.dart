import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_website/config/app_router.dart';
import 'package:personal_website/widgets/project_card_mobile_widget.dart';
import 'package:personal_website/widgets/project_card_widget.dart';

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
        padding: const EdgeInsets.fromLTRB(20, 9, 20, 9),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              ProjectCard(
                assetUrl: 'assets/img/personal_website.jpg',
                isGithub: true,
                isLive: true,
                isMore: true,
                title: "Portfolio Website",
                description:
                    "This is a page that presents me: what technologies I use, what kind of developer I am, what my interests are.",
                stack: "Flutter for Website, BLoC, Github Pages",
              ),
              ProjectCardMobile(
                  isLive: false,
                  isMore: false,
                  isGithub: true,
                  assetUrl: 'assets/img/easy_eat.png',
                  assetUrl2: 'assets/img/easy_eat2.png',
                  title: "EasyEat",
                  description:
                      'This is a private ongoing project. EasyEat is an application for ordering food for parcel machines, which are equipped with the ability to maintain the right temperature for the stored food.',
                  stack: 'Flutter, Bloc, GraphQL, Supabase'),
              ProjectCardMobile(
                  isLive: false,
                  isMore: true,
                  isGithub: false,
                  assetUrl: 'assets/img/ss1.png',
                  assetUrl2: 'assets/img/ss4.png',
                  title: "Ventilation Control",
                  stack: "Flutter, GetX, MQTT",
                  description:
                      'Commercial project. The project consisted in creating software along with a mobile application to control the system. The software is designed to control ventilation in office buildings. Supervise whether the intake air from the outside is to be filtered or not.'),
              ProjectCardMobile(
                assetUrl: 'assets/img/t1_2.png',
                assetUrl2: '',
                isGithub: true,
                isLive: false,
                isMore: false,
                title: "ACV",
                description:
                    "Commercial Project. The application is used to control ventilation and air conditioning in office buildings. If the air conditioning in a given room is turned on and the user opens a window in that room, the air conditioning will be turned off and inform user about this event. Communication with the server takes place using the MQTT protocol.",
                stack: "Flutter, GetX, Push Notifications, MQTT",
              ),
              ProjectCard(
                assetUrl: 'assets/img/personal_website.jpg',
                isGithub: true,
                isLive: false,
                isMore: false,
                title: "RentCar Website",
                description: "",
                stack: "Flutter for Website",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

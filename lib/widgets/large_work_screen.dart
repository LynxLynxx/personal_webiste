import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_website/config/app_router.dart';
import 'package:personal_website/const/projects.dart';
import 'package:personal_website/widgets/project_card_mobile_widget.dart';
import 'package:personal_website/widgets/project_card_widget.dart';
import 'package:personal_website/widgets/responsive.dart';

import '../bloc/theme_bloc/cubit/theme_cubit.dart';

class LargeWorkScreen extends StatelessWidget {
  const LargeWorkScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveWidget.isLargeScreen(context)
          ? AppBar(
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
              automaticallyImplyLeading: false,
            )
          : AppBar(
              automaticallyImplyLeading: true,
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
        padding: const EdgeInsets.fromLTRB(20, 9, 20, 9),
        child: ListView.builder(
          itemCount: projects.length,
          itemBuilder: ((context, index) {
            if (projects[index].cardProject == ProjectCardType.desktopCard) {
              return ProjectCard(
                isLive: projects[index].isLive,
                isMore: projects[index].isMore,
                isGithub: projects[index].isGithub,
                assetUrl: projects[index].primaryAssetUrl,
                title: projects[index].title,
                description: projects[index].description,
                stack: projects[index].stack,
                githubUrl: projects[index].githubUrl,
                liveUrl: projects[index].liveUrl,
                moreUrl: projects[index].moreUrl,
              );
            } else {
              return ProjectCardMobile(
                isLive: projects[index].isLive,
                isMore: projects[index].isMore,
                isGithub: projects[index].isGithub,
                assetUrl: projects[index].primaryAssetUrl,
                title: projects[index].title,
                description: projects[index].shortDescription,
                stack: projects[index].stack,
                assetUrl2: projects[index].secondaryAssetUrl,
                githubUrl: projects[index].githubUrl,
                liveUrl: projects[index].liveUrl,
                moreUrl: projects[index].moreUrl,
              );
            }
          }),
        ),
      ),
    );
  }
}

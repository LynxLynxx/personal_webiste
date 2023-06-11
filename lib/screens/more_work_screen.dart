import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/config/app_router.dart';
import 'package:personal_website/models/more_work_problem.dart';
import 'package:personal_website/widgets/responsive.dart';

import '../bloc/theme_bloc/cubit/theme_cubit.dart';

class MoreWork extends StatelessWidget {
  MoreWork(
      {super.key,
      required this.urlImages,
      required this.projectTitle,
      required this.projectDescription,
      required this.problemSolved});

  final List<String> urlImages;
  final String projectTitle;
  final String projectDescription;
  final List<MoreWorkProblem> problemSolved;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).go(AppRouter.work);
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  projectTitle,
                  style: GoogleFonts.robotoMono(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 15),
              ResponsiveWidget.isLargeScreen(context)
                  ? LargeScreenDescription(
                      urlImages: urlImages,
                      projectDescription: projectDescription,
                    )
                  : SmallScreenDescription(
                      urlImages: urlImages,
                      projectDescription: projectDescription,
                    ),
              const SizedBox(height: 25),
              Center(
                child: Text(
                  'Major problems needed to be solved',
                  style: GoogleFonts.robotoMono(
                      fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: problemSolved.length,
                  itemBuilder: (context, index) => MoreWorkProblemCard(
                      tile: problemSolved[index].title,
                      description: problemSolved[index].description))
            ],
          ),
        ),
      ),
    );
  }
}

class SmallScreenDescription extends StatelessWidget {
  const SmallScreenDescription({
    super.key,
    required this.urlImages,
    required this.projectDescription,
  });

  final List<String> urlImages;
  final String projectDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 400,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: urlImages.length,
              itemBuilder: (context, index) =>
                  MoreWorkImage(urlAsset: urlImages[index]),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            projectDescription,
            style: GoogleFonts.robotoMono(),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}

class LargeScreenDescription extends StatelessWidget {
  const LargeScreenDescription({
    super.key,
    required this.urlImages,
    required this.projectDescription,
  });

  final List<String> urlImages;
  final String projectDescription;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: urlImages.length,
                itemBuilder: (context, index) =>
                    MoreWorkImage(urlAsset: urlImages[index]),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                projectDescription,
                style: GoogleFonts.robotoMono(),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MoreWorkImage extends StatelessWidget {
  const MoreWorkImage({
    super.key,
    required this.urlAsset,
  });

  final String urlAsset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Image.asset(urlAsset),
    );
  }
}

class MoreWorkProblemCard extends StatelessWidget {
  const MoreWorkProblemCard({
    super.key,
    required this.tile,
    required this.description,
  });

  final String tile;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 7,
      ),
      child: Card(
        child: ListTile(
          title: Text(
            tile,
            textAlign: TextAlign.center,
            style: GoogleFonts.robotoMono(fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            description,
            textAlign: TextAlign.justify,
            style: GoogleFonts.robotoMono(),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:personal_website/widgets/responsive.dart';

class ProjectCardMobile extends StatelessWidget {
  const ProjectCardMobile({
    super.key,
    required this.isLive,
    required this.isMore,
    required this.isGithub,
    required this.assetUrl,
    required this.title,
    required this.description,
    required this.stack,
    required this.assetUrl2,
    required this.githubUrl,
    required this.liveUrl,
    required this.moreUrl,
  });

  final bool isLive;
  final bool isMore;
  final bool isGithub;
  final String assetUrl;
  final String assetUrl2;
  final String title;
  final String description;
  final String stack;
  final String githubUrl;
  final String liveUrl;
  final String moreUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Container(
          width: 1050,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.primaryContainer),
          child: ResponsiveWidget.isLargeScreen(context)
              ? LargeMobileProjectDescription(
                  assetUrl: assetUrl,
                  assetUrl2: assetUrl2,
                  title: title,
                  description: description,
                  stack: stack,
                  isGithub: isGithub,
                  githubUrl: githubUrl,
                  isLive: isLive,
                  liveUrl: liveUrl,
                  isMore: isMore,
                  moreUrl: moreUrl)
              : SmallMobileProjectDescription(
                  assetUrl: assetUrl,
                  assetUrl2: assetUrl2,
                  title: title,
                  description: description,
                  stack: stack,
                  isGithub: isGithub,
                  githubUrl: githubUrl,
                  isLive: isLive,
                  liveUrl: liveUrl,
                  isMore: isMore,
                  moreUrl: moreUrl),
        ),
      ),
    );
  }
}

class LargeMobileProjectDescription extends StatelessWidget {
  const LargeMobileProjectDescription({
    super.key,
    required this.assetUrl,
    required this.assetUrl2,
    required this.title,
    required this.description,
    required this.stack,
    required this.isGithub,
    required this.githubUrl,
    required this.isLive,
    required this.liveUrl,
    required this.isMore,
    required this.moreUrl,
  });

  final String assetUrl;
  final String assetUrl2;
  final String title;
  final String description;
  final String stack;
  final bool isGithub;
  final String githubUrl;
  final bool isLive;
  final String liveUrl;
  final bool isMore;
  final String moreUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              Image.asset(
                assetUrl,
                width: 200,
                height: 300,
              ),
              if (assetUrl2.isNotEmpty)
                Image.asset(
                  assetUrl2,
                  width: 200,
                  height: 300,
                ),
            ],
          ),
        ),
        SizedBox(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: GoogleFonts.robotoMono(fontSize: 24),
              ),
              Text(
                description,
                textAlign: TextAlign.justify,
                style: GoogleFonts.robotoMono(),
              ),
              const SizedBox(height: 15),
              Text(
                "Stack used:",
                style: GoogleFonts.robotoMono(fontWeight: FontWeight.w700),
              ),
              Text(stack),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (isGithub)
                    ElevatedButton.icon(
                      onPressed: () {
                        js.context.callMethod('open', [githubUrl]);
                      },
                      label: const Text("Code"),
                      icon: const FaIcon(FontAwesomeIcons.github),
                    ),
                  if (isLive)
                    ElevatedButton.icon(
                      onPressed: () {
                        js.context.callMethod('open', [liveUrl]);
                      },
                      label: const Text("Live"),
                      icon: const Icon(Icons.live_tv_rounded),
                    ),
                  if (isMore)
                    ElevatedButton(
                      onPressed: () {
                        GoRouter.of(context).push(moreUrl);
                      },
                      child: const Text("More"),
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SmallMobileProjectDescription extends StatelessWidget {
  const SmallMobileProjectDescription({
    super.key,
    required this.assetUrl,
    required this.assetUrl2,
    required this.title,
    required this.description,
    required this.stack,
    required this.isGithub,
    required this.githubUrl,
    required this.isLive,
    required this.liveUrl,
    required this.isMore,
    required this.moreUrl,
  });

  final String assetUrl;
  final String assetUrl2;
  final String title;
  final String description;
  final String stack;
  final bool isGithub;
  final String githubUrl;
  final bool isLive;
  final String liveUrl;
  final bool isMore;
  final String moreUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                assetUrl,
                width: 200,
                height: 300,
              ),
              if (assetUrl2.isNotEmpty)
                Image.asset(
                  assetUrl2,
                  width: 200,
                  height: 300,
                ),
            ],
          ),
        ),
        SizedBox(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: GoogleFonts.robotoMono(fontSize: 24),
              ),
              Text(
                description,
                textAlign: TextAlign.justify,
                style: GoogleFonts.robotoMono(),
              ),
              const SizedBox(height: 15),
              Text(
                "Stack used:",
                style: GoogleFonts.robotoMono(fontWeight: FontWeight.w700),
              ),
              Text(stack),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (isGithub)
                    ElevatedButton.icon(
                      onPressed: () {
                        js.context.callMethod('open', [githubUrl]);
                      },
                      label: const Text("Code"),
                      icon: const FaIcon(FontAwesomeIcons.github),
                    ),
                  if (isLive)
                    ElevatedButton.icon(
                      onPressed: () {
                        js.context.callMethod('open', [liveUrl]);
                      },
                      label: const Text("Live"),
                      icon: const Icon(Icons.live_tv_rounded),
                    ),
                  if (isMore)
                    ElevatedButton(
                      onPressed: () {
                        GoRouter.of(context).push(moreUrl);
                      },
                      child: const Text("More"),
                    ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}

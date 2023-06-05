import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.isLive,
    required this.isMore,
    required this.isGithub,
    required this.assetUrl,
    required this.title,
    required this.description,
    required this.stack,
  });

  final bool isLive;
  final bool isMore;
  final bool isGithub;
  final String assetUrl;
  final String title;
  final String description;
  final String stack;

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                assetUrl,
                width: 500,
                height: 300,
              ),
              SizedBox(
                width: 350,
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
                      style:
                          GoogleFonts.robotoMono(fontWeight: FontWeight.w700),
                    ),
                    Text(stack),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (isGithub)
                          ElevatedButton.icon(
                            onPressed: () {},
                            label: const Text("Code"),
                            icon: const FaIcon(FontAwesomeIcons.github),
                          ),
                        if (isLive)
                          ElevatedButton.icon(
                            onPressed: () {},
                            label: const Text("Live"),
                            icon: const Icon(Icons.live_tv_rounded),
                          ),
                        if (isMore)
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("More"),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

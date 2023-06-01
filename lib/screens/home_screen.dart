import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:js' as js;
import '../widgets/nav_bar.dart';

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
    );
  }
}

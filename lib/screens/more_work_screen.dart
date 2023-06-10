import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/config/app_router.dart';
import 'package:personal_website/models/more_work_problem.dart';

import '../bloc/theme_bloc/cubit/theme_cubit.dart';

class MoreWork extends StatelessWidget {
  MoreWork({super.key});

  final List<String> urlImages = [
    'assets/img/ss1.png',
    'assets/img/ss2.png',
    'assets/img/ss3.png',
    'assets/img/ss4.png',
  ];

  final List<MoreWorkProblem> problemSolved = [
    MoreWorkProblem(
        title: "Hiding the server's public IP address",
        description:
            "Solution for this problem was to use MQTT comunnication protocol. Mosquitto MQTT provides an effective solution for hiding a server's public IP address, especially when clients require the server's IP to remain concealed. MQTT (Message Queuing Telemetry Transport) is a lightweight messaging protocol designed for efficient communication between devices in IoT (Internet of Things) environments. By leveraging Mosquitto MQTT, clients can establish secure and private connections with the server without exposing its public IP address. This is achieved by employing MQTT brokers, such as Mosquitto, as intermediaries between the server and clients. The server can publish messages to the broker, which then delivers them to the subscribed clients without revealing the server's public IP. This setup enhances the security and privacy of the server while ensuring seamless communication between the clients and the server."),
    MoreWorkProblem(
        title: "There is no response for a request",
        description:
            "In the MQTT protocol, there is no built-in concept of request and response like in traditional request-response protocols such as HTTP. MQTT operates on a publish-subscribe model, where clients subscribe to topics to receive messages and publish messages to topics for others to receive.\n\nWe implemented request-response-like communication using additional application-level logic. This was achieved by defining specific topics and message formats for request and response pairs. The client that wants to make a request can publish a message to a request topic, and interested parties can subscribe to that topic to receive requests. Then, when another client processes the request and generates a response, it can publish the response to a designated response topic that the requester is subscribed to. This way, the requester can receive the response and process it accordingly."),
  ];

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
                  "Ventilation Control",
                  style: GoogleFonts.robotoMono(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
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
                          "Commercial project. The project consisted in creating software along with a mobile application to control the system. The software is designed to control ventilation in office buildings. Supervise whether the intake air from the outside is to be filtered or not. The designed system  continuously monitor the state of dust, temperature, air humidity and to estimate the level of filter wear. Decision algorithms developed for the needs of the project determine the mode of operation of the device in given conditions and control it Work. The aim of the task was to develop a framework solution enabling control over developed system via remote technologies. A set of controls and configuration switches that allow you to modify the parameters and settings of the system The measurement and control system is made available in the form of a control panel displayed on the screens of mobile devices operating under the control of the Android operating system. panel enables the visualization of measurement data and the status of actuators, as well as allows you to modify the settings of regulators responsible for automatic decisions control systems implemented by embedded software.",
                          style: GoogleFonts.robotoMono(),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Center(
                child: Text(
                  'Major problems needed to be solved',
                  style: GoogleFonts.robotoMono(
                      fontSize: 24, fontWeight: FontWeight.bold),
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

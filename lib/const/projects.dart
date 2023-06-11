import 'package:flutter/material.dart';

import '../models/more_work_problem.dart';
import 'dart:js' as js;

final List<Projects> projects = [
  Projects(
      cardProject: ProjectCardType.desktopCard,
      secondaryAssetUrl: '',
      githubUrl: 'https://github.com/LynxLynxx/personal_webiste',
      liveUrl: '',
      moreUrl: '/morePortfolio',
      primaryAssetUrl: 'assets/img/personal_website.jpg',
      isGithub: true,
      isLive: true,
      isMore: true,
      title: 'Portfolio Website',
      description: '',
      shortDescription:
          "This is a page that presents me: what technologies I use, what kind of developer I am, what my interests are.",
      stack: "Flutter for Website, BLoC, Github Pages",
      problemSolved: [],
      urlAssets: []),
  Projects(
      cardProject: ProjectCardType.mobileCard,
      secondaryAssetUrl: 'assets/img/easy_eat2.png',
      githubUrl: 'https://github.com/HeatEat/EasyEatApp',
      liveUrl: '',
      moreUrl: '',
      primaryAssetUrl: 'assets/img/easy_eat.png',
      isGithub: true,
      isLive: false,
      isMore: false,
      title: 'EastEat',
      description: '',
      shortDescription:
          'This is a private ongoing project. EasyEat is an application for ordering food for parcel machines, which are equipped with the ability to maintain the right temperature for the stored food.',
      stack: 'Flutter, Bloc, GraphQL, Supabase',
      problemSolved: [],
      urlAssets: []),
  Projects(
      cardProject: ProjectCardType.mobileCard,
      secondaryAssetUrl: 'assets/img/ss1.png',
      githubUrl: '',
      liveUrl: '',
      moreUrl: '/more_ventilation',
      primaryAssetUrl: 'assets/img/ss4.png',
      isGithub: false,
      isLive: false,
      isMore: true,
      title: 'Ventilation Control',
      description:
          "Commercial project. The project consisted in creating software along with a mobile application to control the system. The software is designed to control ventilation in office buildings. Supervise whether the intake air from the outside is to be filtered or not. The designed system  continuously monitor the state of dust, temperature, air humidity and to estimate the level of filter wear. Decision algorithms developed for the needs of the project determine the mode of operation of the device in given conditions and control it Work. The aim of the task was to develop a framework solution enabling control over developed system via remote technologies. A set of controls and configuration switches that allow you to modify the parameters and settings of the system The measurement and control system is made available in the form of a control panel displayed on the screens of mobile devices operating under the control of the Android operating system. panel enables the visualization of measurement data and the status of actuators, as well as allows you to modify the settings of regulators responsible for automatic decisions control systems implemented by embedded software.",
      shortDescription:
          'Commercial project. The project consisted in creating software along with a mobile application to control the system. The software is designed to control ventilation in office buildings. Supervise whether the intake air from the outside is to be filtered or not.',
      stack: 'Flutter, GetX, MQTT',
      problemSolved: [
        MoreWorkProblem(
            title: "Hiding the server's public IP address",
            description:
                "Solution for this problem was to use MQTT comunnication protocol. Mosquitto MQTT provides an effective solution for hiding a server's public IP address, especially when clients require the server's IP to remain concealed. MQTT (Message Queuing Telemetry Transport) is a lightweight messaging protocol designed for efficient communication between devices in IoT (Internet of Things) environments. By leveraging Mosquitto MQTT, clients can establish secure and private connections with the server without exposing its public IP address. This is achieved by employing MQTT brokers, such as Mosquitto, as intermediaries between the server and clients. The server can publish messages to the broker, which then delivers them to the subscribed clients without revealing the server's public IP. This setup enhances the security and privacy of the server while ensuring seamless communication between the clients and the server."),
        MoreWorkProblem(
            title: "There is no response for a request",
            description:
                "In the MQTT protocol, there is no built-in concept of request and response like in traditional request-response protocols such as HTTP. MQTT operates on a publish-subscribe model, where clients subscribe to topics to receive messages and publish messages to topics for others to receive.\n\nWe implemented request-response-like communication using additional application-level logic. This was achieved by defining specific topics and message formats for request and response pairs. The client that wants to make a request can publish a message to a request topic, and interested parties can subscribe to that topic to receive requests. Then, when another client processes the request and generates a response, it can publish the response to a designated response topic that the requester is subscribed to. This way, the requester can receive the response and process it accordingly."),
      ],
      urlAssets: [
        'assets/img/ss1.png',
        'assets/img/ss2.png',
        'assets/img/ss3.png',
        'assets/img/ss4.png',
      ]),
  Projects(
      cardProject: ProjectCardType.mobileCard,
      secondaryAssetUrl: '',
      githubUrl: 'https://github.com/LynxLynxx/kiw_app',
      liveUrl: '',
      moreUrl: '',
      primaryAssetUrl: 'assets/img/t1_2.png',
      isGithub: true,
      isLive: false,
      isMore: false,
      title: 'ACV',
      description: '',
      shortDescription:
          "Commercial Project. The application is used to control ventilation and air conditioning in office buildings. If the air conditioning in a given room is turned on and the user opens a window in that room, the air conditioning will be turned off and inform user about this event. Communication with the server takes place using the MQTT protocol.",
      stack: 'Flutter, GetX, Push Notfications, MQTT',
      problemSolved: [],
      urlAssets: []),
  Projects(
      cardProject: ProjectCardType.desktopCard,
      secondaryAssetUrl: '',
      githubUrl: 'https://github.com/LynxLynxx/dashboard_flutter_web',
      liveUrl: '',
      moreUrl: '',
      primaryAssetUrl: 'assets/img/personal_website.jpg',
      isGithub: true,
      isLive: false,
      isMore: false,
      title: 'RentCar Website',
      description: '',
      shortDescription: '',
      stack: 'Flutter Web',
      problemSolved: [],
      urlAssets: [])
];

class Projects {
  final ProjectCardType cardProject;
  final String primaryAssetUrl;
  final String secondaryAssetUrl;
  final bool isGithub;
  final bool isLive;
  final bool isMore;
  final String title;
  final String description;
  final String shortDescription;
  final String stack;
  final List<MoreWorkProblem> problemSolved;
  final List<String> urlAssets;
  final String githubUrl;
  final String liveUrl;
  final String moreUrl;

  Projects({
    required this.cardProject,
    required this.secondaryAssetUrl,
    required this.githubUrl,
    required this.liveUrl,
    required this.moreUrl,
    required this.primaryAssetUrl,
    required this.isGithub,
    required this.isLive,
    required this.isMore,
    required this.title,
    required this.description,
    required this.shortDescription,
    required this.stack,
    required this.problemSolved,
    required this.urlAssets,
  });
}

enum ProjectCardType { desktopCard, mobileCard }

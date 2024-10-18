import '../models/more_work_problem.dart';
// ignore: avoid_web_libraries_in_flutter, unused_import
import 'dart:js' as js;

final List<Projects> projects = [
  Projects(
      cardProject: ProjectCardType.desktopCard,
      secondaryAssetUrl: "",
      githubUrl: "https://github.com/LynxLynxx/appwrite_database_wrapper",
      liveUrl: "",
      moreUrl: "",
      primaryAssetUrl: "",
      isGithub: true,
      isLive: false,
      isMore: false,
      title: "Appwrite Database Wrapper",
      description: "",
      shortDescription:
          "A Dart package that provides a simple interface for interacting with Appwrite databases. It includes models and abstractions for facilitated integration and manipulation of Appwrite collections.This package was inspired by this Appwrite Video. This package is designed to be used with the Appwrite Flutter SDK and is compatible with Flutter projects.This package is still in development and may have some bugs. Please report any issues you encounter.",
      stack: "Dart Package, Appwrite, Flutter",
      problemSolved: [],
      urlAssets: []),
  Projects(
    cardProject: ProjectCardType.mobileCard,
    secondaryAssetUrl: 'assets/img/carlog2.png',
    githubUrl: "https://github.com/LynxLynxx/Carlog",
    liveUrl: "",
    moreUrl: "",
    primaryAssetUrl: "assets/img/carlog1.png",
    isGithub: true,
    isLive: false,
    isMore: false,
    title: "Carlog",
    description: "",
    shortDescription:
        "Carlog is the ultimate app for anyone who wants to stay on top of their car's maintenance costs. With Carlog, you can:\n- Log expenses: Easily record all your car-related expenses, including fuel, repairs, maintenance, and more.\n- Categorize expenses: Organize your expenses into different categories to get a clear overview of your spending.\n- Set reminders: Never forget important maintenance tasks again. Carlog allows you to set reminders for oil changes, tire rotations, and other scheduled services.\n- Track mileage: Monitor your car's mileage to ensure you're getting the most out of your fuel.\n- View detailed reports: Generate comprehensive reports to analyze your spending patterns and identify areas for savings.",
    stack:
        "Flutter, Bloc, Firebase, Push Notifications, GetIt, Injectable, Freezed",
    problemSolved: [],
    urlAssets: [],
  ),
  Projects(
      cardProject: ProjectCardType.desktopCard,
      secondaryAssetUrl: '',
      githubUrl: 'https://github.com/LynxLynxx/personal_webiste',
      liveUrl: 'https://lynxlynxx.github.io/',
      moreUrl: '/morePortfolio',
      primaryAssetUrl: 'assets/img/personal_website.jpg',
      isGithub: true,
      isLive: true,
      isMore: true,
      title: 'Portfolio Website',
      description:
          "This platform was meticulously crafted using Flutter, a versatile and powerful framework renowned for its ability to create stunning cross-platform applications. Leveraging the Flutter framework, I have implemented the BLoC (Business Logic Component) pattern, ensuring scalable and maintainable code architecture. Moreover, this website is fully responsive, adapting seamlessly to various screen sizes and devices. Whether you're browsing on a desktop, laptop, tablet, or mobile phone, you can experience the seamless functionality and captivating design of my projects. Witness the harmonious blend of Flutter, BLoC, and responsive design as you navigate through the portfolio, immersing yourself in the world of mobile development excellence.",
      shortDescription:
          "This is a page that presents me: what technologies I use, what kind of developer I am, what my interests are.",
      stack: "Flutter for Website, BLoC, Github Pages",
      problemSolved: [
        MoreWorkProblem(
            title: 'Responsiveness',
            description:
                'To make this website responsive I needed to create widget that check if the screen is less than given breakpoint value. Current window size is comes from MediaQuery. In most cases I tried to use conditional statement do display widget that is made for large display or small display, but some times it was easier to create seprete screens for small or large displays.'),
        MoreWorkProblem(
            title: 'Change theme',
            description:
                "As we know, there's two kind of people: ones that belongs to dark side and these who belongs to light side. So naturaly I wanted to give people an option to choose if they want to use light or dark theme of the website.")
      ],
      urlAssets: [
        'assets/img/pw2.png',
        'assets/img/pw3.png',
        'assets/img/pw4.png',
        'assets/img/pw5.png',
        'assets/img/personal_website.jpg',
      ]),
  // Projects(
  //     cardProject: ProjectCardType.mobileCard,
  //     secondaryAssetUrl: 'assets/img/easy_eat2.png',
  //     githubUrl: 'https://github.com/HeatEat/EasyEatApp',
  //     liveUrl: '',
  //     moreUrl: '',
  //     primaryAssetUrl: 'assets/img/easy_eat.png',
  //     isGithub: true,
  //     isLive: false,
  //     isMore: false,
  //     title: 'EastEat',
  //     description: '',
  //     shortDescription:
  //         'This is a private ongoing project. EasyEat is an application for ordering food for parcel machines, which are equipped with the ability to maintain the right temperature for the stored food.',
  //     stack: 'Flutter, Bloc, GraphQL, Supabase',
  //     problemSolved: [],
  //     urlAssets: []),
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
      moreUrl: '/more_acv',
      primaryAssetUrl: 'assets/img/t1_2.png',
      isGithub: false,
      isLive: false,
      isMore: true,
      title: 'ACV',
      description:
          "Introducing an innovative Flutter app that puts the power of controlling your AC and ventilation systems at your fingertips. Designed with convenience and comfort in mind, this app allows you to effortlessly adjust temperature, fan speed, and ventilation settings, all from your mobile device. With a user-friendly interface and seamless navigation, you can easily customize your indoor environment to suit your preferences and optimize energy efficiency. Developed using Flutter and leveraging the BLoC architecture, this app ensures a smooth and responsive user experience. Furthermore, to prioritize the security of communication, the app utilizes the MQTT protocol to establish a secure and reliable connection with the server. While I cannot disclose the code due to the project's commercial nature, rest assured that this app combines cutting-edge technology, intuitive design, and robust communication protocols to deliver a seamless and secure control solution for your AC and ventilation systems.\n\n As it was a commercial project I cannot show a source code.",
      shortDescription:
          "Commercial Project. The application is used to control ventilation and air conditioning in office buildings. If the air conditioning in a given room is turned on and the user opens a window in that room, the air conditioning will be turned off and inform user about this event. Communication with the server takes place using the MQTT protocol.",
      stack: 'Flutter, GetX, Push Notfications, MQTT',
      problemSolved: [
        MoreWorkProblem(
            title: "Creating wireframe of an app",
            description:
                "Client wanted an app but did not had an UI design so i needed to create some sort of wireframe of an app. To develop an effective app, one of the initial steps is to create a wireframe to outline the layout and structure. While not focusing on the visual design elements, the wireframe serves as a blueprint that defines the app's various screens, features, and their interconnected flow. It helps in visualizing the app's hierarchy, navigation, and overall user experience. Through this wireframing process, you can carefully plan the placement of key elements, such as buttons, menus, and content sections, ensuring an intuitive and logical user interface. By establishing a solid wireframe foundation, you can align stakeholders' expectations, facilitate efficient collaboration, and provide a clear roadmap for subsequent development stages."),
        MoreWorkProblem(
            title: 'Notifications',
            description:
                "In the process of developing a mobile app, a notable challenge arose concerning notifications, and I successfully resolved it. Notifications play a crucial role in engaging and keeping users informed about relevant updates, events, or actions within the app. With meticulous problem-solving, I devised an effective solution that ensured timely and accurate notifications reached users. I established a seamless mechanism for delivering notifications to users' devices. Through thorough testing and iteration, I fine-tuned the notification system to ensure its reliability, efficiency, and compatibility across various mobile platforms. This accomplishment not only enhanced the app's user experience but also demonstrated my proficiency in resolving complex technical challenges to deliver a robust and user-friendly mobile app.")
      ],
      urlAssets: [
        'assets/img/kiw1.jpg',
        'assets/img/kiw2.png',
        'assets/img/kiw3.png',
        'assets/img/kiw4.png',
        'assets/img/t1_2.png'
      ]),
  // Projects(
  //     cardProject: ProjectCardType.mobileCard,
  //     secondaryAssetUrl: 'assets/img/md2.png',
  //     githubUrl: 'https://github.com/LynxLynxx/mealdeal_app',
  //     liveUrl:
  //         'https://appetize.io/app/p2nai6gpc32lk4wum2daeqheoe?device=pixel4&osVersion=11.0&scale=75',
  //     moreUrl: '',
  //     primaryAssetUrl: 'assets/img/md1.png',
  //     isGithub: true,
  //     isLive: true,
  //     isMore: false,
  //     title: 'Meal Deal',
  //     description: '',
  //     shortDescription:
  //         'Discover a user-friendly Flutter app that provides a visually appealing platform to explore and prepare a diverse range of delightful recipes. With its intuitive interface and comprehensive features, this app is designed to enhance your culinary experience and inspire your cooking endeavors.',
  //     stack: 'Flutter, setState',
  //     problemSolved: [],
  //     urlAssets: [])
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

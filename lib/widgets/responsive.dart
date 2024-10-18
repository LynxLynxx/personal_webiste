import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget({
    super.key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  });

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 950;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 950;
  }

  // static bool isMediumScreen(BuildContext context) {
  //   return MediaQuery.of(context).size.width < 950;
  // }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 950) {
          return largeScreen;
          // } else if (constraints.maxWidth <= 1200 &&
          //     constraints.maxWidth >= 800) {
          //   return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:personal_website/widgets/responsive.dart';

import '../widgets/large_resume_screen.dart';
import '../widgets/small_resume_screen.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isLargeScreen(context)
        ? const LargeResumeScreen()
        : const SmallResumeScreen();
  }
}

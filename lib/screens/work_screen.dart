import 'package:flutter/material.dart';

import '../widgets/large_work_screen.dart';
import '../widgets/responsive.dart';
import '../widgets/small_work_screen.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isLargeScreen(context)
        ? const LargeWorkScreen()
        : const SmallWorkScreen();
  }
}

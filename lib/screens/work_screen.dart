import 'package:flutter/material.dart';
import 'package:personal_website/widgets/nav_bar.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          NavBar(),
          Center(
            child: Text('Work'),
          ),
        ],
      ),
    );
  }
}

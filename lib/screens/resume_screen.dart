import 'package:flutter/material.dart';
import 'package:personal_website/widgets/nav_bar.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          NavBar(),
          Center(
            child: Text('Resume'),
          ),
        ],
      ),
    );
  }
}

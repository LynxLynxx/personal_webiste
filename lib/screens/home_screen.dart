import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.red,
              height: 50,
              child: Row(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

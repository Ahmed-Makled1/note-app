import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(children: [SizedBox(height: 35), CustomAppBar()]),
      ),
    );
  }
}

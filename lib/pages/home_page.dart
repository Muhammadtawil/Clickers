import 'package:flutter/material.dart';

import '../widgets/nav_bar.dart';
import 'landing_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 39, 176, 165),
                Color.fromARGB(255, 45, 88, 112),
                Colors.purple,
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Navbar(),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 40.0,
                ),
                child: LandingPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

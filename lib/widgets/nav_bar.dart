import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return const DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return const DesktopNavbar();
        } else {
          return const MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Clickers",
              style:
                  GoogleFonts.rubikBubbles(fontSize: 49, color: Colors.white)),
          Row(
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Services',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'About us',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              MaterialButton(
                color: Colors.pink,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {},
                child: const Text(
                  "Learn",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(children: <Widget>[
        Text("Clickers",
            style: GoogleFonts.rubikBubbles(fontSize: 40, color: Colors.white)),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Services',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'About us',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              MaterialButton(
                color: Colors.pink,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {},
                child: const Text(
                  "Learn",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

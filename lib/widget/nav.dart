import 'package:flutter/material.dart';
import 'package:flutter_application_1/vues/accueil.dart';
import 'package:flutter_application_1/vues/competence.dart';
import 'package:flutter_application_1/vues/experience.dart';
import 'package:flutter_application_1/vues/formation.dart';

class NavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavBarState();
  }
}

class NavBarState extends State<NavBar> {
  double sizeLogo = 35;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 4,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.home_outlined),
            iconSize: sizeLogo,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PageAccueil()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.school_outlined),
            iconSize: sizeLogo,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PageFormation()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.work_outline),
            iconSize: sizeLogo,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PageExperience()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border_outlined),
            iconSize: sizeLogo,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PageCompetence()),
              );
            },
          ),
        ],
      ),
    );
  }
}

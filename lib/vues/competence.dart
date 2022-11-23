import 'package:flutter/material.dart';
import '../widget/cardCompetence.dart';
import '../widget/nav.dart';

class PageCompetence extends StatefulWidget {
  const PageCompetence({super.key});
  @override
  State<PageCompetence> createState() => _PageCompetenceState();
}

class _PageCompetenceState extends State<PageCompetence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        children: <Widget>[
          cardCompetence(
            langage: "Java",
            note: 85,
          ),
          cardCompetence(
            langage: "Javascript",
            note: 80,
          ),
          cardCompetence(
            langage: "Html",
            note: 60,
          ),
          cardCompetence(
            langage: "CSS",
            note: 60,
          ),
          cardCompetence(
            langage: "Python",
            note: 60,
          ),
          cardCompetence(
            langage: "C++",
            note: 55,
          ),
          cardCompetence(
            langage: "Php",
            note: 40,
          ),
        ],
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}

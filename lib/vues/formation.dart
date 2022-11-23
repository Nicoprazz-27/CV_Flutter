import 'package:flutter/material.dart';
import '../widget/nav.dart';

class PageFormation extends StatefulWidget {
  const PageFormation({super.key});
  @override
  State<PageFormation> createState() => _PageFormationState();
}

class _PageFormationState extends State<PageFormation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.asset('assets/images/esigelec.png'),
        TextButton(
          onPressed: () {},
          child: const Text('Formation'),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Table(
            border: TableBorder.all(color: Colors.grey, width: 1.5),
            columnWidths: const {
              0: FlexColumnWidth(4),
              1: FlexColumnWidth(1),
            },
            children: [
              TableRow(children: [
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "Java/JEE Programming",
                      style: TextStyle(fontSize: 18.0),
                    )),
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "70 h",
                      style: TextStyle(fontSize: 18.0),
                    ))
              ]),
              TableRow(children: [
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "Programmation en C#",
                      style: TextStyle(fontSize: 18.0),
                    )),
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "30 h",
                      style: TextStyle(fontSize: 18.0),
                    ))
              ]),
              TableRow(children: [
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "Gestion de Projet Logiciels",
                      style: TextStyle(fontSize: 18.0),
                    )),
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "30 h",
                      style: TextStyle(fontSize: 18.0),
                    ))
              ]),
              TableRow(children: [
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "Langage C++",
                      style: TextStyle(fontSize: 18.0),
                    )),
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "30 h",
                      style: TextStyle(fontSize: 18.0),
                    ))
              ]),
              TableRow(children: [
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "Android",
                      style: TextStyle(fontSize: 18.0),
                    )),
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "40 h",
                      style: TextStyle(fontSize: 18.0),
                    ))
              ]),
              TableRow(children: [
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "Database PL/SQL",
                      style: TextStyle(fontSize: 18.0),
                    )),
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "20 h",
                      style: TextStyle(fontSize: 18.0),
                    ))
              ]),
              TableRow(children: [
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "Artificial Intelligence Python",
                      style: TextStyle(fontSize: 18.0),
                    )),
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "20 h",
                      style: TextStyle(fontSize: 18.0),
                    ))
              ]),
              TableRow(children: [
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "Frameworks Java",
                      style: TextStyle(fontSize: 18.0),
                    )),
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "20 h",
                      style: TextStyle(fontSize: 18.0),
                    ))
              ]),
              TableRow(children: [
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "Conception Site Web",
                      style: TextStyle(fontSize: 18.0),
                    )),
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "30 h",
                      style: TextStyle(fontSize: 18.0),
                    ))
              ]),
              TableRow(children: [
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "Microprocesseur",
                      style: TextStyle(fontSize: 18.0),
                    )),
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "70 h",
                      style: TextStyle(fontSize: 18.0),
                    ))
              ]),
              TableRow(children: [
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "Node.js",
                      style: TextStyle(fontSize: 18.0),
                    )),
                Container(
                    padding: const EdgeInsets.all(6),
                    child: const Text(
                      "20 h",
                      style: TextStyle(fontSize: 18.0),
                    ))
              ]),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: NavBar(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/nav.dart';

class PageAccueil extends StatefulWidget {
  const PageAccueil({super.key});

  @override
  State<PageAccueil> createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 160),
              height: 200,
              width: 200,
              foregroundDecoration: BoxDecoration(
                border: Border.all(width: 3.5, color: Colors.red),
                borderRadius: BorderRadius.circular(95),
              ),
              child: Container(
                height: 180,
                width: 180,
                foregroundDecoration: BoxDecoration(
                  border: Border.all(width: 3.5, color: Colors.blue),
                  borderRadius: BorderRadius.circular(95),
                ),
                child: Image.asset(
                  'assets/images/avatar.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                'Nicolas Sirjent',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40, left: 35, right: 35),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  width: 30,
                  child: const Icon(Icons.email_outlined, size: 30),
                ),
                Container(
                  child: const Text(
                    'Nicolas.sirjent@groupe-esigelec.org',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 35, right: 35),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  width: 30,
                  child: const Icon(Icons.phone_iphone_outlined, size: 30),
                ),
                Container(
                  child: const Text(
                    '0X XX XX XX XX',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 35, right: 35),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  width: 30,
                  child: const Icon(Icons.location_on_outlined, size: 30),
                ),
                Container(
                  child: const Text(
                    'Rouen, 76000',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 35, right: 35),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  width: 30,
                  child: const Icon(Icons.directions_car_outlined, size: 30),
                ),
                Container(
                  child: const Text(
                    'Permis de conduire B et véhiculé',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}

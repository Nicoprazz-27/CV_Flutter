// ignore: file_names
import 'package:flutter/material.dart'
    show
        BoxFit,
        BuildContext,
        Card,
        Colors,
        FontWeight,
        Image,
        ListTile,
        StatelessWidget,
        Text,
        TextStyle,
        Widget;
import 'package:percent_indicator/percent_indicator.dart';

// ignore: camel_case_types, must_be_immutable
class cardCompetence extends StatelessWidget {
  int note;
  String langage = "java";
  // ignore: use_key_in_widget_constructors
  cardCompetence({required this.langage, required this.note});

  @override
  Widget build(BuildContext context) {
    String path = 'assets/images/$langage.png';
    String noteFinale = '$note %';
    double pourcentage = note / 100;
    return Card(
      child: ListTile(
        title: Text(langage),
        subtitle: LinearPercentIndicator(
          //leaner progress bar
          animation: true,
          animationDuration: 1000,
          lineHeight: 20.0,
          percent: pourcentage,
          center: Text(
            noteFinale,
            style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
          // ignore: deprecated_member_use
          linearStrokeCap: LinearStrokeCap.roundAll,
          progressColor: Colors.blue[400],
          backgroundColor: Colors.grey[300],
        ),
        leading: Image.asset(
          path.toLowerCase(),
          width: 50,
          height: 50,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

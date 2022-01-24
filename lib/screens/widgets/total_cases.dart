// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants.dart';
import 'data_tile.dart';

class TotalCases extends StatelessWidget {
  final int cases;
  final int infected;
  final int recovered;
  final int deaths;

  TotalCases({
    required this.cases,
    required this.deaths,
    required this.infected,
    required this.recovered,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Total Cases',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Expanded(
                child: DataTile(
                  name: 'Cases',
                  backgroundColor: lightGrey,
                  data: cases,
                  icon: Icons.coronavirus_outlined,
                  textColor: darkGrey,
                ),
              ),
              Expanded(
                child: DataTile(
                  name: 'Infected',
                  backgroundColor: lightBlue,
                  data: infected,
                  icon: Icons.thermostat,
                  textColor: darkBlue,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: DataTile(
                  name: 'Recovered',
                  backgroundColor: lightGreen,
                  data: recovered,
                  icon: Icons.sentiment_satisfied_alt_outlined,
                  textColor: darkGreen,
                ),
              ),
              Expanded(
                child: DataTile(
                  name: 'Deaths',
                  backgroundColor: lightRed,
                  data: deaths,
                  icon: Icons.sentiment_dissatisfied_outlined,
                  textColor: darkRed,
                ),
              ),
            ],
          ),
        ]),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}

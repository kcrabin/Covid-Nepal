// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:covid_nepal/constants.dart';
import 'package:covid_nepal/screens/widgets/data_tile.dart';
import 'package:flutter/material.dart';

class RecentUpdate extends StatelessWidget {
  final int newCases;
  final int recovered;
  final int deaths;

  RecentUpdate(
      {required this.newCases, required this.recovered, required this.deaths});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '24 Hours Update',
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
                    name: 'New Cases',
                    backgroundColor: lightBlue,
                    data: newCases,
                    icon: Icons.coronavirus_outlined,
                    textColor: darkBlue,
                  ),
                ),
                Expanded(
                  child: DataTile(
                    name: 'Recovered',
                    backgroundColor: lightGreen,
                    data: recovered,
                    icon: Icons.sentiment_satisfied_alt_outlined,
                    textColor: darkGreen,
                  ),
                ),
              ],
            ),
            DataTile(
              name: 'Deaths',
              backgroundColor: lightRed,
              data: deaths,
              icon: Icons.sentiment_dissatisfied_outlined,
              textColor: darkRed,
            ),
          ])
        ],
      ),
    );
  }
}

import 'package:covid_nepal/screens/widgets/bottom_container.dart';
import 'package:covid_nepal/screens/widgets/recent_update.dart';
import 'package:covid_nepal/screens/widgets/top_container.dart';
import 'package:covid_nepal/screens/widgets/total_cases.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('COVID Nepal'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopContainer(),
              RecentUpdate(),
              TotalCases(),
              BottomContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

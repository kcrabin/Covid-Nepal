import 'package:covid_nepal/constants.dart';
import 'package:covid_nepal/data/api_service.dart';
import 'package:covid_nepal/data/models/api_response.dart';
import 'package:covid_nepal/screens/widgets/bottom_container.dart';
import 'package:covid_nepal/screens/widgets/recent_update.dart';
import 'package:covid_nepal/screens/widgets/top_container.dart';
import 'package:covid_nepal/screens/widgets/total_cases.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiResponse? apiResponse;
  bool isLoading = false;
  bool isError = false;

  Future<void> loadData() async {
    setState(() {
      isLoading = true;
      isError = false;
    });

    try {
      apiResponse = await ApiService.getCovidData();
    } catch (e) {
      setState(() {
        isError = true;
      });
      print(e);
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title: const Text('COVID Nepal'),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : isError
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Failed to load data'),
                      ElevatedButton(
                          onPressed: loadData, child: const Text('Retry'))
                    ],
                  ),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopContainer(apiResponse!.updated.toString()),
                        RecentUpdate(
                          newCases: apiResponse!.todayCases!,
                          deaths: apiResponse!.todayDeaths!,
                          recovered: apiResponse!.todayRecovered!,
                        ),
                        TotalCases(
                          cases: apiResponse!.cases!,
                          deaths: apiResponse!.deaths!,
                          recovered: apiResponse!.recovered!,
                          infected: apiResponse!.active!,
                        ),
                        BottomContainer(apiResponse!.tests!),
                      ],
                    ),
                  ),
                ),
    );
  }
}

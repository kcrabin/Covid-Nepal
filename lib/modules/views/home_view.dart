import 'package:covid_nepal/constants.dart';
import 'package:covid_nepal/data/api_service.dart';
import 'package:covid_nepal/data/models/api_response.dart';
import 'package:covid_nepal/modules/controllers/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'widgets/bottom_container.dart';
import 'widgets/recent_update.dart';
import 'widgets/top_container.dart';
import 'widgets/total_cases.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title: const Text('COVID Nepal'),
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : controller.isError.value
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Failed to load data'),
                        ElevatedButton(
                            onPressed: controller.loadData,
                            child: const Text('Retry'))
                      ],
                    ),
                  )
                : SingleChildScrollView(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TopContainer(
                                controller.apiResponse!.updated.toString()),
                            RecentUpdate(
                              newCases: controller.apiResponse!.todayCases!,
                              deaths: controller.apiResponse!.todayDeaths!,
                              recovered:
                                  controller.apiResponse!.todayRecovered!,
                            ),
                            TotalCases(
                              cases: controller.apiResponse!.cases!,
                              deaths: controller.apiResponse!.deaths!,
                              recovered: controller.apiResponse!.recovered!,
                              infected: controller.apiResponse!.active!,
                            ),
                            BottomContainer(controller.apiResponse!.tests!),
                          ],
                        ),
                      ),
                    ),
                  ),
      ),
    );
  }
}

import 'package:covid_nepal/data/api_service.dart';
import 'package:covid_nepal/data/models/api_response.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ApiResponse? apiResponse;
  final isLoading = false.obs;
  final isError = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {
    isLoading(true);
    isError(false);

    try {
      apiResponse = await ApiService.getCovidData();
    } catch (e) {
      isError(true);

      print(e);
    }
    isLoading(false);
  }
}

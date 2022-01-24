import 'dart:convert';

import 'package:covid_nepal/constants.dart';
import 'package:http/http.dart' as http;
import 'models/api_response.dart';

class ApiService {
  static Future<ApiResponse> getCovidData({bool isYesterday = false}) async {
    var url;
    if (isYesterday) {
      url = Uri.parse(baseUrl + '?yesterday=true');
    } else {
      url = Uri.parse(baseUrl);
    }
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    if (response.statusCode == 200) {
      print('Response body: ${response.body}');
      ApiResponse apiResponse = ApiResponse.fromJson(jsonDecode(response.body));
      if (apiResponse.todayCases == 0) {
        return await getCovidData(isYesterday: true);
      }
      return ApiResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}

class ApiResponse {
  int? updated;
  String? country;
  int? cases;
  int? todayCases;
  int? deaths;
  int? todayDeaths;
  int? recovered;
  int? todayRecovered;
  int? active;
  int? tests;

  ApiResponse({
    this.updated,
    this.country,
    this.cases,
    this.todayCases,
    this.deaths,
    this.todayDeaths,
    this.recovered,
    this.todayRecovered,
    this.active,
    this.tests,
  });

  ApiResponse.fromJson(Map<String, dynamic> json) {
    this.updated = json["updated"];
    this.country = json["country"];
    this.cases = json["cases"];
    this.todayCases = json["todayCases"];
    this.deaths = json["deaths"];
    this.todayDeaths = json["todayDeaths"];
    this.recovered = json["recovered"];
    this.todayRecovered = json["todayRecovered"];
    this.active = json["active"];
    this.tests = json["tests"];
  }
}

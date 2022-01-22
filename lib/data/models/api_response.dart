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
  int? critical;
  int? casesPerOneMillion;
  int? deathsPerOneMillion;
  int? tests;
  int? testsPerOneMillion;
  int? population;
  String? continent;
  int? oneCasePerPeople;
  int? oneDeathPerPeople;
  int? oneTestPerPeople;
  double? activePerOneMillion;
  double? recoveredPerOneMillion;
  double? criticalPerOneMillion;

  ApiResponse(
      {this.updated,
      this.country,
      this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.todayRecovered,
      this.active,
      this.critical,
      this.casesPerOneMillion,
      this.deathsPerOneMillion,
      this.tests,
      this.testsPerOneMillion,
      this.population,
      this.continent,
      this.oneCasePerPeople,
      this.oneDeathPerPeople,
      this.oneTestPerPeople,
      this.activePerOneMillion,
      this.recoveredPerOneMillion,
      this.criticalPerOneMillion});

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
    this.critical = json["critical"];
    this.casesPerOneMillion = json["casesPerOneMillion"];
    this.deathsPerOneMillion = json["deathsPerOneMillion"];
    this.tests = json["tests"];
    this.testsPerOneMillion = json["testsPerOneMillion"];
    this.population = json["population"];
    this.continent = json["continent"];
    this.oneCasePerPeople = json["oneCasePerPeople"];
    this.oneDeathPerPeople = json["oneDeathPerPeople"];
    this.oneTestPerPeople = json["oneTestPerPeople"];
    this.activePerOneMillion = json["activePerOneMillion"];
    this.recoveredPerOneMillion = json["recoveredPerOneMillion"];
    this.criticalPerOneMillion = json["criticalPerOneMillion"];
  }
}

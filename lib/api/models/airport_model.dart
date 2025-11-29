class AirportModel {
  final String id;
  final String gmt;
  final String airportId;
  final String iataCode;
  final String cityIataCode;
  final String icaoCode;
  final String countryIso2;
  final String geoNameId;
  final String latitude;
  final String longitude;
  final String airportName;
  final String countryName;
  String? phoneNumber;
  final String timezone;

  AirportModel({
    required this.id,
    required this.gmt,
    required this.airportId,
    required this.iataCode,
    required this.cityIataCode,
    required this.icaoCode,
    required this.countryIso2,
    required this.geoNameId,
    required this.latitude,
    required this.longitude,
    required this.airportName,
    required this.countryName,
    this.phoneNumber,
    required this.timezone,
  });

  factory AirportModel.fromJson(Map<String, dynamic> json) {
    return AirportModel(
      id: json["id"] as String,
      gmt: json["gmt"] as String,
      airportId: json["airport_id"] as String,
      iataCode: json["iata_code"] as String,
      cityIataCode: json["city_iata_code"] as String,
      icaoCode: json["icao_code"] as String,
      countryIso2: json["country_iso2"] as String,
      geoNameId: json["geoname_id"] as String,
      latitude: json["latitude"] as String,
      longitude: json["longitude"] as String,
      airportName: json["airport_name"] as String,
      countryName: json["country_name"] as String,
      phoneNumber: json["phone_number"],
      timezone: json["timezone"] as String,
    );
  }
}

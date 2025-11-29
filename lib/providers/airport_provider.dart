import 'package:assessment_app/api/api_service.dart';
import 'package:assessment_app/api/models/airport_model.dart';
import 'package:flutter/material.dart';

class AirportProvider with ChangeNotifier {
  late List<AirportModel> airportData;

  bool loading = false;
  ApiService services = ApiService();

  getAirportData(context) async {
    loading = true;
    airportData = await ApiService().airportApi.getAirportList(
      offset: "5",
      limit: "10",
    );
    loading = false;

    notifyListeners();
  }
}

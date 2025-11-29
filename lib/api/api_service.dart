import 'package:assessment_app/api/api_client.dart';
import 'package:assessment_app/api/handlers/airport_api.dart';

class ApiService {
  static final ApiService _apiService = ApiService._internal();

  factory ApiService() => _apiService;

  ApiService._internal();

  late final ApiClient _apiClient = ApiClient();

  late final Uri _baseUrl = Uri.parse(ApiClient.baseUrl);

  //Api Here
  AirportApi? _airportApi;

  AirportApi get airportApi => _airportApi ??= AirportApi(apiClient: _apiClient, baseUrl: _baseUrl);
}
import 'package:assessment_app/api/api_client.dart';
import 'package:assessment_app/api/models/airport_model.dart';

typedef Json = Map<String, dynamic>;

class AirportApi {

  AirportApi({
    required this.apiClient,
    required this.baseUrl,
  });

  final ApiClient apiClient;
  final Uri baseUrl;

  Future<List<AirportModel>> getAirportList({required String offset, required String limit}) async {

    final queryParam = <String, dynamic>{
      'access_key': 'db72aefa98b9186b45091e2f2404702e',
      'limit': limit,
      'offset': offset,
    };

    final uri = baseUrl.replace(
      queryParameters:  queryParam,
      path:  '${baseUrl.path}/airports',
    );

    return await apiClient.dio.getUri(uri).then((response) {
      return response.data['data'].map<AirportModel>((dynamic data) => AirportModel.fromJson(data as Json)).toList();
    });
  }
}
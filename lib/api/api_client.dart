import 'package:dio/dio.dart';


//initializes and calls the api and at the same time catches any errors in the process

class ApiClient {
  late Dio dio;

  static const String baseUrl = "https://api.aviationstack.com/v1";

  ApiClient() {
    dio = Dio()
      ..options.baseUrl = baseUrl
      ..interceptors.add(QueuedInterceptorsWrapper(
        onRequest:  (options, handler) {
          options.queryParameters['access_key'] = 'db72aefa98b9186b45091e2f2404702e';

          handler.next(options);
        },
        onError: (error, handler) => handler.reject(error),
      ));
  }
}




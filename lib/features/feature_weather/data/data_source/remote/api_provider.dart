import 'package:dio/dio.dart';

import '../../../../../core/utils/constants.dart';

class ApiProvider {
  final Dio _dio = Dio();

  Future<dynamic> callCurrentWeather(String cityName) async {
    final response = await _dio.get('${Constants.baseUrl}/data/2.5/weather',
        queryParameters: {
          'q': cityName,
          'appid': Constants.apiKey,
          'units': 'metric'
        });
    return response;
  }
}

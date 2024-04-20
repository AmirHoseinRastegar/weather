import 'package:dio/dio.dart';
import 'package:weather_besenior/features/feature_weather/data/data_source/remote/api_provider.dart';

import '../../../../core/resources/error_handler.dart';
import '../../domain/entities/current_city_entity.dart';
import '../../domain/repository/weather_repository.dart';
import '../model/current_city_model.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  ApiProvider apiProvider;

  WeatherRepositoryImpl({required this.apiProvider});

  @override
  Future<DataState<CurrentCityEntity>> fetchCurrentWeatherData(
      String cityName) async {
    Response response = await apiProvider.callCurrentWeather(cityName);
    try {
      if(response.statusCode==200){
        final CurrentCityEntity currentCityEntity = CurrentCityModel.fromJson(response.data);
        return DataSuccess(currentCityEntity);
      }else{
        return DataError('wrong');
      }
    } catch (e) {
      return DataError(e.toString());
    }
  }
}

import 'package:weather_besenior/core/resources/error_handler.dart';
import 'package:weather_besenior/features/feature_weather/data/data_source/remote/api_provider.dart';
import 'package:weather_besenior/features/feature_weather/domain/entities/current_city_entity.dart';

abstract class WeatherRepository {

 Future<DataState<CurrentCityEntity>> fetchCurrentWeatherData(String cityName);

}
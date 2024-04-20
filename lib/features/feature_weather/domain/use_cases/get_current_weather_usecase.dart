import 'package:weather_besenior/core/resources/error_handler.dart';
import 'package:weather_besenior/core/use_cases/use_cases.dart';
import 'package:weather_besenior/features/feature_weather/domain/entities/current_city_entity.dart';
import 'package:weather_besenior/features/feature_weather/domain/repository/weather_repository.dart';

class GetCurrentWeatherUseCase
    extends UseCase<DataState<CurrentCityEntity>, String> {
  final WeatherRepository weatherRepository;

  GetCurrentWeatherUseCase({required this.weatherRepository});

  @override
  Future<DataState<CurrentCityEntity>> call(String params) {
    return weatherRepository.fetchCurrentWeatherData(params);
  }
}

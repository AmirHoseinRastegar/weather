import 'package:get_it/get_it.dart';
import 'package:weather_besenior/features/feature_weather/data/data_source/remote/api_provider.dart';
import 'package:weather_besenior/features/feature_weather/data/repository/weather_repositoryimpl.dart';
import 'package:weather_besenior/features/feature_weather/peresntation/bloc/home_bloc.dart';

import 'features/feature_weather/domain/repository/weather_repository.dart';
import 'features/feature_weather/domain/use_cases/get_current_weather_usecase.dart';

GetIt locator = GetIt.instance;

///by using get it package we can make instance objects of our classes for allover the app
///and do not need to make object of them anywhere we need we just need to call locator of the get it
setup() {
  locator.registerSingleton<ApiProvider>(ApiProvider());

  ///for weather repository
  locator.registerSingleton<WeatherRepository>(
      WeatherRepositoryImpl(apiProvider: locator()));

  ///for use case
  locator.registerSingleton<GetCurrentWeatherUseCase>(
      GetCurrentWeatherUseCase(weatherRepository: locator()));

  ///for bloc
  locator.registerSingleton<HomeBloc>(HomeBloc(locator()));
}

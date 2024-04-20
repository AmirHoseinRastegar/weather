part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class LoadCurrentWeather extends HomeEvent {
  final String cityName;

  LoadCurrentWeather(this.cityName);

}

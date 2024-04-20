import 'package:flutter/cupertino.dart';
import 'package:weather_besenior/features/feature_weather/domain/entities/current_city_entity.dart';

@immutable
abstract class CwStatus {}

class CwLoading extends CwStatus {}

class CwSuccess extends CwStatus {
  final CurrentCityEntity currentCityEntity;

  CwSuccess(this.currentCityEntity);
}

class CwError extends CwStatus {
  final String message;

  CwError(this.message);
}

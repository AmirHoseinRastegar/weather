import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_besenior/core/resources/error_handler.dart';
import 'package:weather_besenior/features/feature_weather/peresntation/bloc/cw_status.dart';

import '../../domain/use_cases/get_current_weather_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetCurrentWeatherUseCase getCurrentWeatherUseCase;

  HomeBloc(this.getCurrentWeatherUseCase) : super(HomeState(CwLoading())) {
    on<LoadCurrentWeather>((event, emit) async {
      emit(state.copyWith( CwLoading()));

      DataState dataState= await getCurrentWeatherUseCase(event.cityName) ;

      if(dataState is DataSuccess){
        emit(state.copyWith( CwSuccess(dataState.data)));

      }
      if(dataState is DataError){
        emit(state.copyWith( CwError(dataState.message!)));
      }
    });
  }
}

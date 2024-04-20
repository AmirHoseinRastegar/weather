import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_besenior/core/widgets/main_wrapper.dart';
import 'features/feature_weather/domain/use_cases/get_current_weather_usecase.dart';
import 'features/feature_weather/peresntation/bloc/home_bloc.dart';
import 'locator.dart';

void main() async {
  await setup();
  runApp(
    MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (_) => locator<HomeBloc>(),
          ),
        ],
        child:  MainWrapper(),
      ),
    ),
  );
}

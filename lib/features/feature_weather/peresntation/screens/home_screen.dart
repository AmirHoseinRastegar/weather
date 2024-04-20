import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_besenior/features/feature_weather/peresntation/bloc/home_bloc.dart';

import '../bloc/cw_status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String cityName = 'tehran';

  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeBloc>(context).add(LoadCurrentWeather(cityName));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
              if (state.cwStatus is CwLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state.cwStatus is CwError) {
                return Center(
                  child: Text((state.cwStatus as CwError).message),
                );
              }
              if (state.cwStatus is CwSuccess) {
                return Center(
                  child: Text(
                      (state.cwStatus as CwSuccess).currentCityEntity.name
                          .toString(),style: TextStyle(color: Colors.white),),
                );
              }
              return Container();
            }),
          ],
        ));
  }
}

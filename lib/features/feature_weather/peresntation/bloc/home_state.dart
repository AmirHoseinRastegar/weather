part of 'home_bloc.dart';


 class HomeState {
  final CwStatus cwStatus;

  const HomeState(this.cwStatus);

  HomeState copyWith(CwStatus? newCwStatus){

    return HomeState(newCwStatus ?? cwStatus);

  }
}



part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class GetServicesEvent extends HomeEvent {
  final ValueSetter<HomeState>? callback;
  GetServicesEvent({this.callback});
}

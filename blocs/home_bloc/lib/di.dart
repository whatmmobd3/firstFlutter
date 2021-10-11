import 'package:flutter_cpnetworking_service/flutter_cpnetworking_service.dart';
import 'package:get_it/get_it.dart';
import 'package:home_bloc/bloc/home/home_bloc.dart';
import 'package:home_bloc/home_bloc.dart';
import 'package:home_repository/home.dart';

void buildDI(
    {required StorageTokenProcessor storageTokenProcessor,
    required NetworkConfigurable networkConfigurable}) async {
  GetIt.instance.registerFactory<HomeBloc>(() {
    var client = HomeClient(
        storageTokenProcessor: storageTokenProcessor,
        networkConfigurable: networkConfigurable);
    return HomeBloc(repo: client);
  });
}

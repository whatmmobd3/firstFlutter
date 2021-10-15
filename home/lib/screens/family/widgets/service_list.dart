import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home/components/horizontal_item.dart';
import 'package:home_bloc/home_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:home_repository/entities/service_entity.dart';

class ServiceList extends StatelessWidget {
  final ValueSetter<ServiceEntity> press;
  const ServiceList({Key? key, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      if (state.status == HomeStatus.initial) {
        context.read<HomeBloc>().add(GetServicesEvent());
      }
      return Container(
          padding: const EdgeInsets.only(
              top: AppConsts.kDefaultPadding,
              bottom: AppConsts.kDefaultPadding / 2,
              left: AppConsts.kDefaultPadding,
              right: AppConsts.kDefaultPadding),
          child: AlignWrap(
              widgets: state.services
                  .map((e) => SizedBox(
                        width: ((100.w - AppConsts.kDefaultPadding * 2) / 3),
                        child: HorizontalItem(
                            image: e.icon,
                            title: e.name,
                            press: () => press(e)),
                      ))
                  .toList()));
    });
  }
}

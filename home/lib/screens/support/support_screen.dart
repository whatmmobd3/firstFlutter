import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home/generated_images.dart';
import 'package:home/l10n/generated/l10n.dart';
import 'package:home_bloc/home_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:home_repository/entities/service_entity.dart';

import 'widgets/big_banner.dart';
import 'widgets/service_list.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  _SupportScreenState createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  var refreshController = RefreshController(
      initialRefresh: false, initialLoadStatus: LoadStatus.loading);
  var reconnected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const StatusAppBar(),
      backgroundColor: const Color(0xFFFDFDFD),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              // Allows the user to reveal the app bar if they begin scrolling
              // back up the list of items.
              floating: false,
              stretch: true,
              elevation: 0,
              // Display a placeholder widget to visualize the shrinking size.
              flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                var top = constraints.biggest.height;
                var background = Image.asset(
                  Img.headerFaq,
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                );
                return Stack(
                  children: [
                    Positioned.fill(
                        child: Stack(
                      children: [
                        Positioned.fill(
                            child: Visibility(
                                visible: top < 160,
                                child: Image.asset(
                                  Img.header,
                                  fit: BoxFit.fill,
                                ))),
                      ],
                    )),
                    FlexibleSpaceBar(
                      centerTitle: true,
                      background: Stack(children: [
                        Positioned.fill(child: background),
                        Positioned.fill(
                            child: Padding(
                          padding: const EdgeInsets.only(
                              left: AppConsts.kDefaultPadding + 6, bottom: 54),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(S.current.homeDoctor,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700)),
                              Text(S.current.feelSafe,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ))
                      ]),
                    ),
                  ],
                );
              }),
              // Make the initial height of the SliverAppBar larger than normal.
              expandedHeight: 208,
              pinned: true),

          // Next, create a SliverList
          // SliverList(
          //   // Use a delegate to build items as they're scrolled on screen.
          //   delegate: SliverChildBuilderDelegate(
          //     // The builder function returns a ListTile with a title that
          //     // displays the index of the current item.
          //     (context, index) {
          //       switch (index) {
          //         case 0:
          //           return ServiceList(press: (e) => pressService(context, e));
          //         case 1:
          //           return BigBanner(press: () => goToPackage(context));
          //       }
          //     },
          //     // Builds 1000 ListTiles
          //     childCount: 2,
          //   ),
          // )
        ],
      ),
    );
  }

  void requestLoading() async {
    await Future.delayed(const Duration(milliseconds: 500));
    await refreshController.requestLoading();
  }

  void onLoading() async {
    context.read<HomeBloc>().add(GetServicesEvent());
  }

  void goToPackage(BuildContext context) {
    getIt
        .get<NavigationService>()
        .goTo(deeplink: DeeplinkConstant.patientPackagesScreen);
  }

  void pressService(BuildContext context, ServiceEntity e) async {}
}

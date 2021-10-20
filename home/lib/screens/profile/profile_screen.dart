import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/generated_images.dart';
import 'package:home/l10n/generated/l10n.dart';

const detailTextP = TextStyle(fontSize: 12, fontWeight: FontWeight.w300);

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  // var bool isVietnamese = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        Banner2(),
        SliverList(delegate: SliverChildBuilderDelegate(
          (context, index) {
            switch (index) {
              case 0:
                return ProfilePage();
            }
          },

          // return SupportPage();
        ))
      ],
    ));
  }
}

class Banner2 extends StatefulWidget {
  @override
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<Banner2> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
        expandedHeight: 150,
        pinned: true);
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _SupportPageState createState() => _SupportPageState();
}

class _SupportPageState extends State<ProfilePage> {
  var background = Image.asset(
    Img.headerFaq,
    fit: BoxFit.cover,
    alignment: Alignment.bottomCenter,
  );

  bool isEn = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(S.current.letUsHelp),
        ),
        Center(
          child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 20),
              child: InkWell(
                  onTap: getMessage,
                  child: Container(
                      padding: EdgeInsets.all(20),
                      width: 350,
                      decoration: BoxDecoration(
                          color: AppColors.accent,
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Text(S.current.login,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.black))))),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 20.0,
              ),
              SvgPicture.asset(Ic.contact),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(S.current.contact),
                  Text(S.current.subContact, style: detailTextP),
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              SizedBox(
                width: 20.0,
              ),
              SvgPicture.asset(Ic.world),
              SizedBox(
                width: 20.0,
              ),
              Text(S.current.language),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Row(
            children: [
              SizedBox(
                width: 50.0,
              ),
              Checkbox(value: !isEn,
                  checkColor: Colors.white,
                  activeColor: AppColors.azureRadiance,
                  shape: CircleBorder(),
                  onChanged: (bool? value){
                setState(() {
                  isEn = false;
                });
              }),
              Text(S.current.vn),
              SizedBox(
                width: 30.0,
              ),
              Checkbox(value: isEn,
                  checkColor: Colors.white,
                  activeColor: AppColors.azureRadiance,
                  hoverColor: Colors.red,
                  shape: CircleBorder(),
                  onChanged: (bool? value){
                setState(() {
                  isEn = true;
                });
              }),
              // SizedBox(
              //   width: 30.0,
              // ),
              Text(S.current.en),
            ],
          ),
        ),
      ],
    );
  }

  void getMessage() {
    print(S.current.sendMesseage);
  }
}
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home/generated_images.dart';
import 'package:home/l10n/generated/l10n.dart';


const detailText1 = TextStyle(fontSize: 12, fontWeight: FontWeight.w300);


class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SupportPage());
  }
}

class SupportPage extends StatefulWidget {
  @override
  _SupportPageState createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  var background = Image.asset(
    Img.headerFaq,
    fit: BoxFit.cover,
    alignment: Alignment.bottomCenter,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              S.current.letUsKnow,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10.0),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 10),
              child: Text(S.current.ourPleasure, textAlign: TextAlign.center),
            ),
          ],
        ),
        GestureDetector(
          onTap: () => getFAQ(),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 40.0,
              ),
              Image.asset(
                Img.question,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('FAQs'),
                  Text(
                    S.current.searchFAQ,
                    style: detailText1,
                  ),
                ],
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () => getCenter(),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 40.0,
              ),
              Image.asset(
                Img.customerService,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(S.current.callCenter),
                  Text(S.current.discussWithCS, style: detailText1),
                ],
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () => getMessage(),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 40.0,
              ),
              Image.asset(
                Img.message,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(S.current.sendMesseage),
                  Text(
                    S.current.sendNow,
                    style: detailText1,
                  ),
                ],
              )
            ],
          ),
        ),
        InkWell(
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
                        .copyWith(color: Colors.black))))
      ],
    );
  }

  void getFAQ() {
    print(S.current.searchFAQ);
  }

  void getCenter() {
    print(S.current.callCenter);
  }

  void getMessage() {
    print(S.current.sendMesseage);
  }
}

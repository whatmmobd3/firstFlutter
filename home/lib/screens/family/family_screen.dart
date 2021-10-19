import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home/generated_images.dart';
import 'package:home/l10n/generated/l10n.dart';

import 'package:home/screens//support/support_screen.dart';

const detailText1 = TextStyle(fontSize: 12, fontWeight: FontWeight.w300);

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      body: Container(child: FamilyPage()),
    );
  }
}

class FamilyPage extends StatefulWidget {
  @override
  _SupportPageState createState() => _SupportPageState();
}

class _SupportPageState extends State<FamilyPage> {
  var background = Image.asset(
    Img.headerFaq,
    fit: BoxFit.cover,
    alignment: Alignment.bottomCenter,
  );

  // memberList
  // registerDescription

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          Img.doctor,
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),
        Text(S.current.registerDescription),
        Container(
            margin: EdgeInsets.only(top: 50),
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

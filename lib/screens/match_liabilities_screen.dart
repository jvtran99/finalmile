import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './personal_info_screen.dart';
import 'rates_screen.dart';
import '../widgets/custombutton.dart';

void clickBack(BuildContext ctx) {
  Navigator.of(ctx).pushReplacementNamed(
    PersonalInfo.routeName,
  );
}

void clickNext(BuildContext ctx) {
  Navigator.of(ctx).pushReplacementNamed(
    RatesScreen.routeName,
  );
}

class MatchLiabilities extends StatelessWidget {
  static const routeName = '/match-liabilities';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Match Liabilities'),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: new CarouselSlider(
                  items: [30, 20, 15, 4, 5].map((i) {
                    return new Builder(
                      builder: (BuildContext context) {
                        return Card(
                          elevation: 5,
                          child: new Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            margin: new EdgeInsets.symmetric(horizontal: 5.0),
                            child: new Text(
                              'Validation Questionaire $i of 5',
                              style: new TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                  height: 500.0,
                  autoPlay: false),
            ),
            Positioned(
            child: Center(
              child: Container(
                margin: EdgeInsets.all(30),
                // width: double.infinity,
                width: 500,
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          clickBack(context);
                          print('Back button hit');
                        },
                        child: buildCustomButton1(context, 'Back'),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () => clickNext(context),
                        child: buildCustomButton1(context, 'Next'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ],
        ),
        );
  }
}

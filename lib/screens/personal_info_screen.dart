import 'package:flutter/material.dart';

import './rates_screen.dart';
import '../widgets/checkbox.dart';
import '../widgets/custombutton.dart';
import './loan_purpose_screen.dart';
import '../widgets/menu.dart';
import '../widgets/appbar.dart';

Widget buildSectionTitle(BuildContext context, String text) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(
      vertical: 10,
    ),
    child: Text(
      text,
      textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.title,
    ),
  );
}

void clickBack(BuildContext ctx) {
  Navigator.of(ctx).pushReplacementNamed(
    RatesScreen.routeName,
  );
}

void clickNext(BuildContext ctx) {
  Navigator.of(ctx).pushReplacementNamed(
    LoanPurpose.routeName,
  );
}

class PersonalInfo extends StatelessWidget {
  static const routeName = '/personal-info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: buildAppBar(context, "Personal Information"),
      drawer: MenuDrawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://www.essexhomes.net/storage/app/medialibrary/public/2019/11/48673/conversions/5dd81489aed35696653990-hero.jpg'),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.lightBlue.withOpacity(0.1), BlendMode.dstATop),
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.topCenter,
              width: 500,
              child: Container(
                // color: Colors.grey[50],
                color: Colors.red,
                // height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        buildSectionTitle(context,
                            'Let\'s start with some information about you'),
                      ],
                    ),
                    Text(
                        'By providing this information, it allows us to gather details about your credit worthiness, share your credit score, and provide us with the information needed to give you an accurate quote'),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'First Name'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Last Name'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Mobile Phone Number'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Last 4 digit of your Social Security #'),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CheckBoxWidget(),
                            Text("I authorize Certainty to verifty my credit"),
                          ],
                        ),
                      ],
                    ),
                    Spacer(flex: 1),
                    Container(
                      // margin: EdgeInsets.all(30),
                      width: double.infinity,
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

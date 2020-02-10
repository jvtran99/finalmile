import 'package:flutter/material.dart';

import './rates_screen.dart';
import '../widgets/checkbox.dart';
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
      style: Theme.of(context).textTheme.headline6,
    ),
  );
}

void clickBack(BuildContext ctx) {
  Navigator.of(ctx).pushReplacementNamed(
    RatesScreenRd.routeName,
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
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://www.essexhomes.net/storage/app/medialibrary/public/2019/11/48673/conversions/5dd81489aed35696653990-hero.jpg'),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.lightBlue.withOpacity(0.1), BlendMode.dstATop),
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.topCenter,
              width: 500,
              child: SingleChildScrollView(
                              child: Container(
                  color: Colors.grey[50],
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
                              hintText: 'Social Security Number'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Email Address'),
                        ),
                      ),
                      
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CheckBoxWidget(),
                          Expanded(
                            child: Text(
                              "I agree that my data can be used for the purposes noted below ",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "By checking the box, you agree that we can share your personal data with third parties such as mortgage providers, service partners and other affiliates, so these parties can use your data to improve your experience.  You agree that our trusted partners have permission to share your identity, credit, income, employment, and asset information with Early Mortgage.  You authorize Early Mortgage to redirect you to our partners' secure website if necessary.  Your information is subject to the Terms of Use and Privacy Policy of Certainty.",
                        style: TextStyle(fontSize: 12),
                      ),
                    SizedBox(height: 30),
                      // Expanded(
                      //   child: 
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Spacer(),
                              FlatButton(
                                onPressed: () {
                                  clickNext(context);
                                  print(Text('Next button hit'));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      'Next',
                                      style: TextStyle(
                                        color: Colors.cyan[700],
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    SizedBox(width: 10.0),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.cyan[700],
                                      size: 20.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                      //   ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

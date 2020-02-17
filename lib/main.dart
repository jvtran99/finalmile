
import 'package:flutter/material.dart';

import './screens/rates_screen.dart';
import './screens/property_info_screen.dart';
import './screens/personal_info_screen.dart';
import './screens/sign_in_screen.dart';
import './screens/property_input_screen.dart';
import './screens/match_liabilities_screen.dart';
import './screens/loan_purpose_screen.dart';
import './screens/recommendations_screen.dart';
import './screens/select_lien_screen.dart';
import './screens/select_home_screen.dart';
// import './screens/layout_buider.dart';
// import './screens/Sliverexample.dart';
import './screens/income_employment_screen.dart';

void main() => runApp(MyApp());


/*
Colors 
1093A7 - middle Colors.cyan[700]
24454C - dark Colors.cyan[900]
24454C - lightest Colors.cyan[50]
579BA4 - hazy Colors.cyan[800]
1AD3F1 - bright Colors.cyan[300]
FFFFFF - white

*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Certianty',
      theme: ThemeData(
        // fontFamily: 'Raleway',
        primarySwatch: Colors.lightBlue,
        textTheme: TextTheme(
          headline5: TextStyle(
            fontSize: 15.0,
            color: Colors.cyan[700],
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 16.0,
            // color: Colors.red,
            fontFamily: 'Raleway',
          ),
          headline6: TextStyle(
            fontSize: 25.0,
            color: Colors.cyan[700],
            // fontWeight: FontWeight.bold,
            fontFamily: 'Raleway',
          ),
        ),
        primaryColorLight: Colors.white,
        cardColor: Colors.lightBlue[800],
      ),
      // home: RatesScreen(),
      routes: {
        // '/': (ctx) => RatesScreen(),
        '/': (ctx) => RatesScreenRd(),
        // '/': (ctx) => IncomeEmployment(),
        RatesScreenRd.routeName: (ctx) => RatesScreenRd(),
        SignIn.routeName: (ctx) => SignIn(),
        SelectLien.routeName: (ctx) => SelectLien(),
        PropertyInput.routeName: (ctx) => PropertyInput(),
        LoanPurpose.routeName: (ctx) => LoanPurpose(),
        PropertyInfo.routeName: (ctx) => PropertyInfo(),
        PersonalInfo.routeName: (ctx) => PersonalInfo(),
        Recommendations.routeName: (ctx) => Recommendations(),
        MatchLiabilities.routeName: (ctx) => MatchLiabilities(),
        SelectHome.routeName: (ctx) => SelectHome(),
        IncomeEmployment.routeName: (ctx) => IncomeEmployment(),
      },
    );
  }
}

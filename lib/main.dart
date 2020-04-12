import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/person_provider.dart';

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
import './screens/income_employment_screen.dart';
import './screens/income_employment_filled_screen.dart';
import './screens/assets_screen.dart';
import './screens/assets_filled_screen.dart';
import './screens/credit_report_screen.dart';
import './screens/underwriting_screen.dart';
import './screens/underwriting_analyze_screen.dart';
import './screens/loan_conditions.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => PersonProvider(),
          child: MaterialApp(
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
          '/': (ctx) => RatesScreenRd(),
          RatesScreenRd.routeName: (ctx) => RatesScreenRd(),
          PersonalInfo.routeName: (ctx) => PersonalInfo(),
          LoanPurpose.routeName: (ctx) => LoanPurpose(),
          SignIn.routeName: (ctx) => SignIn(),
          SelectLien.routeName: (ctx) => SelectLien(),
          PropertyInput.routeName: (ctx) => PropertyInput(),
          PropertyInfo.routeName: (ctx) => PropertyInfo(),
          Recommendations.routeName: (ctx) => Recommendations(),
          MatchLiabilities.routeName: (ctx) => MatchLiabilities(),
          SelectHome.routeName: (ctx) => SelectHome(),
          IncomeEmployment.routeName: (ctx) => IncomeEmployment(),
          AssetDetails.routeName: (ctx) => AssetDetails(),
          IncomeEmploymentFilled.routeName: (ctx) => IncomeEmploymentFilled(),
          AssetDetailsFilled.routeName: (ctx) => AssetDetailsFilled(),
          CreditReport.routeName: (ctx) => CreditReport(),
          UnderwritingScreen.routeName: (ctx) => UnderwritingScreen(),
          AnalyzingLoan.routeName: (ctx) => AnalyzingLoan(),
          LoanConditions.routeName: (ctx) => LoanConditions(),

          
        },
      ),
    );
  }
}

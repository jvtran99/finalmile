import 'package:flutter/material.dart';

import '../screens/select_lien_screen.dart';
import '../screens/personal_info_screen.dart';
import '../screens/loan_purpose_screen.dart';
import '../screens/recommendations_screen.dart';
import '../screens/select_home_screen.dart';
import '../screens/income_employment_screen.dart';
import '../screens/assets_screen.dart';
import '../screens/credit_report_screen.dart';
import '../screens/underwriting_screen.dart';
import '../screens/loan_conditions.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          PreferredSize(
            preferredSize: Size.fromHeight(15.0),
            child: AppBar(
              title: Text(
                'Menu',
              ),
              automaticallyImplyLeading: false,
            ),
          ),
          Divider(),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.shop),
                  title: Text('View Rates'),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.shop),
                  title: Text('Personal Info'),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(PersonalInfo.routeName);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.shop),
                  title: Text('Select Loan Purpose'),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(LoanPurpose.routeName);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.shop),
                  title: Text('Select Home'),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SelectHome.routeName);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.shop),
                  title: Text('Select Lien'),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SelectLien.routeName);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.shop),
                  title: Text('Recommendations'),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Recommendations.routeName);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.shop),
                  title: Text('Employment Info'),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(IncomeEmployment.routeName);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.shop),
                  title: Text('Asset Details'),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(AssetDetails.routeName);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.shop),
                  title: Text('Credit Report'),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(CreditReport.routeName);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.shop),
                  title: Text('Underwriting'),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(UnderwritingScreen.routeName);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.shop),
                  title: Text('Loan Conditions'),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(LoanConditions.routeName);
                  },
                ),
                
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

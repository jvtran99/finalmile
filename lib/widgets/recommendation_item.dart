import 'package:flutter/material.dart';


import '../screens/income_employment_screen.dart';

 void clickApply(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      IncomeEmployment.routeName,
    );
  }

Widget buildRecommendationItem(
  BuildContext context, int year) {
  return Container(
    margin: EdgeInsets.fromLTRB(18, 10, 18, 10),
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      year.toString(),
                      style: TextStyle(
                        fontSize: 44,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                    Text(
                      ' Year Fixed',
                      style: TextStyle(
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  // margin: EdgeInsets.symmetric(horizontal:20 ),
                  color: Colors.grey[200],
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Benefits: \n \n- Save 467 a month on your current mortgage \n \n- Skip your February payment if you close by March 21st \n \n- Recoup the cost of your refinance in 3 months',
                    style: Theme.of(context).textTheme.bodyText2,
                    // textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: <Widget>[
                    Text(
                      '\$1,967',
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                    Text(
                      'per month',
                      style: TextStyle(
                        // fontSize: 16,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                  ],
                ),
              ]),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 2),
          padding: EdgeInsets.all(8),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(flex: 4, child: Text('Principal & Interest')),
              Text('\$1467')
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 2),
          padding: EdgeInsets.all(8),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(flex: 4, child: Text('Estimated Taxes & Insurance')),
              Text('\$500')
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(18),
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'Rate',
                    style: TextStyle(
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                  Text(
                    '3.25%',
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).primaryColorLight,
                    ),
                  )
                ],
              ),
              Spacer(),
              Column(
                children: <Widget>[
                  Text(
                    'APR',
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                  Text(
                    '3.289%',
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).primaryColorLight,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 2),
          padding: EdgeInsets.all(8),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(flex: 4, child: Text('Estimated Taxes & Insurance')),
              Text('\$500')
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 2),
          padding: EdgeInsets.all(8),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(flex: 4, child: Text('Estimated Taxes & Insurance')),
              Text('\$500')
            ],
          ),
        ),
        RaisedButton(
          color: Colors.lightBlue,
          onPressed: () => clickApply(context),
          child: Text(
            'Apply',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}

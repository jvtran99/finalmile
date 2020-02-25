import 'package:flutter/material.dart';
import './checkbox.dart';
// import '../screens/recommendations_screen.dart';

Widget buildLienWoTaxesItem(context, String lender, String lienType, String balance, String monthlyPayment) {
  // void propertyInput(BuildContext ctx) {
  //   Navigator.of(ctx).pushReplacementNamed(
  //     Recommendations.routeName,
  //   );
  // }

  return Card(
    color: Theme.of(context).cardColor,
    elevation: 2,
    child: InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(18),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(40,0,0,0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Text(
                          'Lender:',
                          style: TextStyle(
                            color: Theme.of(context).primaryColorLight,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          lender,
                          style: TextStyle(
                            color: Theme.of(context).primaryColorLight,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Text(
                          'Lien Type:',
                          style: TextStyle(
                            color: Theme.of(context).primaryColorLight,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          lienType,
                          style: TextStyle(
                            color: Theme.of(context).primaryColorLight,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Text(
                          'Remaining Balance:',
                          style: TextStyle(
                            color: Theme.of(context).primaryColorLight,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          '\$$balance',
                          style: TextStyle(
                            color: Theme.of(context).primaryColorLight,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Text(
                          'Monthly Payment:',
                          style: TextStyle(
                            color: Theme.of(context).primaryColorLight,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          '\$$monthlyPayment',
                          style: TextStyle(
                            color: Theme.of(context).primaryColorLight,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Text(
                          'Account Status:',
                          style: TextStyle(
                            color: Theme.of(context).primaryColorLight,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          'Open',
                          style: TextStyle(
                            color: Theme.of(context).primaryColorLight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            // Text(
            //   'Are Taxes and Insurance included in the payment?',
            //   style: TextStyle(
            //     color: Theme.of(context).primaryColorLight,
            //   ),
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: <Widget>[
            //     FlatButton(
            //       color: Colors.lightBlue,
            //       onPressed: () => propertyInput(context),
            //       child: Text(
            //         'YES',
            //         style: TextStyle(color: Colors.white),
            //       ),
            //     ),
            //     FlatButton(
            //       color: Colors.lightBlue,
            //       onPressed: () {},
            //       child: Text(
            //         'NO',
            //         style: TextStyle(color: Colors.white),
            //       ),
            //     ),
            //   ],
            // ),
            Row(
              children: <Widget>[
                CheckBoxWidget(),
                Text(
                  'Pay loan off with my new mortgage',
                  style: TextStyle(
                    color: Theme.of(context).primaryColorLight,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

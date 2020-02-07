import 'package:flutter/material.dart';

class RateCard extends StatelessWidget {
  final String id;
  final int year;
  final double rate;
  final double apr;
  final double payment;
  final double fees;

  RateCard(
    this.id,
    this.year,
    this.rate,
    this.apr,
    this.payment,
    this.fees,
  );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Card(
        elevation: 3,
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Text(
                  '${year.toString()} Year Fixed Rate',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Karla',
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Rate',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColorLight),
                            ),
                            Text(
                              '${rate.toString()}%',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColorLight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'APR',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColorLight),
                            ),
                            Text(
                              '${apr.toString()}%',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColorLight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Payment',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColorLight),
                            ),
                            Text(
                              '\$${payment.toString()}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColorLight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Fees',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColorLight),
                            ),
                            Text(
                              '\$${fees.toString()}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColorLight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RateViewDetails(),
            ],
          ),
        ),
      ),
    );
  }
}

class RateViewDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('TODO Show more details');
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              'View Details',
              style: TextStyle(
                color: Theme.of(context).primaryColorLight,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Theme.of(context).primaryColorLight,
            ),
          ],
        ),
        alignment: Alignment.bottomRight,
      ),
    );
  }
}

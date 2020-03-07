import 'package:flutter/material.dart';

class RateCard extends StatefulWidget {
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
  _RateCardState createState() => _RateCardState();
}

class _RateCardState extends State<RateCard> {
  bool open = false;

  @override
  Widget build(BuildContext context) {
    // return LoanTypeHeader(year: widget.year, rate: widget.rate, apr: widget.apr, payment: widget.payment, fees: widget.fees);
    return new Container(
      color: Colors.white,
      child: new InkWell(
        onTap: () {
          setState(() {
            open = !open;
          });
        },
        child: Container(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              LoanTypeHeader(
                  year: widget.year,
                  rate: widget.rate,
                  apr: widget.apr,
                  payment: widget.payment,
                  fees: widget.fees),
              new AnimatedCrossFade(
                firstChild: RateViewDetails(),
                secondChild: new Container(),
                crossFadeState:
                    open ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                duration: new Duration(
                  milliseconds: 150,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoanTypeHeader extends StatelessWidget {
  const LoanTypeHeader({
    Key key,
    @required this.year,
    @required this.rate,
    @required this.apr,
    @required this.payment,
    @required this.fees,
  }) : super(key: key);

  final int year;
  final double rate;
  final double apr;
  final double payment;
  final double fees;

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
              Container(
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
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildSeparationLine() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 18),
      width: double.infinity,
      height: 1,
      color: Color(0xffafafaf),
    );
  }


class RateViewDetails extends StatelessWidget {
  final TextStyle titleTextStyle = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 12,
    height: 1,
    letterSpacing: .2,
    fontWeight: FontWeight.w600,
    color: Colors.black54,
  );
  final TextStyle contentTextStyle = TextStyle(
    fontFamily: 'Oswald',
    fontSize: 14,
    height: 1.5,
    letterSpacing: .3,
    color: Colors.black54,
  );
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.fromLTRB(8,0,8,8),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        // height: 500,
        color: Colors.blueGrey[50],
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    flex: 4,
                    child: Text('Orignation Charges'.toUpperCase(),
                        style: titleTextStyle)),
                SizedBox(
                  width: 50,
                ),
                Expanded(flex: 1, child: Text('\$0', style: contentTextStyle)),
              ],
            ),
            _buildSeparationLine(),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 4,
                    child: Text('Services You Cannot Shop For'.toUpperCase(),
                        style: titleTextStyle)),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                    flex: 1, child: Text('\$664', style: contentTextStyle)),
              ],
            ),
            _buildSeparationLine(),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    flex: 4,
                    child:
                        Text('Appraisal'.toUpperCase(), style: titleTextStyle)),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    flex: 1, child: Text('\$450', style: contentTextStyle)),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    flex: 4,
                    child: Text('Credit Report'.toUpperCase(),
                        style: titleTextStyle)),
                SizedBox(
                  width: 20,
                ),
                Expanded(flex: 1, child: Text('\$50', style: contentTextStyle)),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    flex: 4,
                    child: Text('Flood Certification'.toUpperCase(),
                        style: titleTextStyle)),
                SizedBox(
                  width: 20,
                ),
                Expanded(flex: 1, child: Text('\$14', style: contentTextStyle)),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    flex: 4,
                    child: Text('Attorney Fee'.toUpperCase(),
                        style: titleTextStyle)),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    flex: 1, child: Text('\$150', style: contentTextStyle)),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 4,
                    child: Text('Services You Cannot Shop For'.toUpperCase(),
                        style: titleTextStyle)),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                    flex: 1, child: Text('\$2400', style: contentTextStyle)),
              ],
            ),
            _buildSeparationLine(),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    flex: 4,
                    child: Text('Title Policy'.toUpperCase(),
                        style: titleTextStyle)),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    flex: 1, child: Text('\$2400', style: contentTextStyle)),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 4,
                    child: Text('Taxes and Gov\'t Charges'.toUpperCase(),
                        style: titleTextStyle)),
                SizedBox(
                  width: 50,
                ),
                Expanded(flex: 1, child: Text('TBD', style: contentTextStyle)),
              ],
            ),
              _buildSeparationLine(),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    flex: 4,
                    child: Text('Other Charges'.toUpperCase(),
                        style: titleTextStyle)),
                SizedBox(
                  width: 20,
                ),
                Expanded(flex: 1, child: Text('\$0', style: contentTextStyle)),
              ],
            ),
          SizedBox(height: 20),
          Row(
              children: <Widget>[
                Expanded(
                    flex: 4,
                    child: Text('Subtotal'.toUpperCase(),
                        style: titleTextStyle)),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                    flex: 1, child: Text('\$3064', style: contentTextStyle)),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 4,
                    child: Text('Adjustments and Credits'.toUpperCase(),
                        style: titleTextStyle)),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                    flex: 1, child: Text('\$1100', style: contentTextStyle)),
              ],
            ),
            _buildSeparationLine(),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 4,
                    child: Text('Total'.toUpperCase(),
                        style: titleTextStyle)),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                    flex: 1, child: Text('\$1964', style: contentTextStyle)),
              ],
            ),
            
          
          ],
        ),
        alignment: Alignment.bottomRight,
      ),
    );
  }
}

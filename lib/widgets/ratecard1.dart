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

  Widget _buildRateCardHeader(ThemeData theme) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Card(
        elevation: 3,
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              buildRateType(context, 25),
              SizedBox(
                height: 5,
              ),
              buildRateDetails(context, 3.875, 3.888, 967, 2759),
              SizedBox(height: 10),
              RateViewDetails(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAssumptionEdit(ThemeData theme) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(10),
          color: Colors.amber,
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                margin: EdgeInsets.symmetric(vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Zip code',
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.symmetric(vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Credit Score Range'),
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.symmetric(vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Property Type',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.symmetric(vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Occupancy',
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.symmetric(vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Estimated Home Value',
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.symmetric(vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Outstanding Mortgage(s)',
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.symmetric(vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Cash Out (Optional)',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
    // },) ;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
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
              _buildRateCardHeader(theme),
              new AnimatedCrossFade(
                firstChild: _buildAssumptionEdit(theme),
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

class RateViewDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // InkWell(
        //   onTap: () {
        //     print('TODO Show more details');
        //   },
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
      // ),
    );
  }
}

Widget buildRateDetails(
    BuildContext context, double rate, double apr, int payment, int fees) {
  return Container(
    child: Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Rate',
                  style: TextStyle(color: Theme.of(context).primaryColorLight),
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
                  style: TextStyle(color: Theme.of(context).primaryColorLight),
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
                  style: TextStyle(color: Theme.of(context).primaryColorLight),
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
                  style: TextStyle(color: Theme.of(context).primaryColorLight),
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
  );
}

Widget buildRateType(BuildContext context, int year) {
  return Container(
    width: double.infinity,
    child: Text(
      '${year.toString()} Year Fixed Rate',
      style: TextStyle(
        fontSize: 15.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    alignment: Alignment.topLeft,
  );
}

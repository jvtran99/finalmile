import 'package:flutter/material.dart';

import '../widgets/ratecard.dart';
// import '../widgets/ratecard1.dart';
import '../widgets/switch.dart';
import '../widgets/checkbox.dart';
import '../widgets/assumptions.dart';
import '../models/loantype.dart';
import '../widgets/custombutton.dart';
import './personal_info_screen.dart';
import '../widgets/menu.dart';
import '../widgets/appbar.dart';

class RatesScreen extends StatelessWidget {
  static const routeName = '/rates';

  final List<LoanType> loantypes = [
    LoanType(
      id: '1',
      year: 30,
      rate: 3.875,
      apr: 3.888,
      payment: 967,
      fees: 2759,
    ),
    LoanType(
      id: '2',
      year: 20,
      rate: 3.750,
      apr: 3.758,
      payment: 1157,
      fees: 2759,
    ),
    LoanType(
      id: '3',
      year: 15,
      rate: 3.625,
      apr: 3.658,
      payment: 1267,
      fees: 2759,
    ),
    LoanType(
      id: '4',
      year: 10,
      rate: 3.500,
      apr: 3.578,
      payment: 1467,
      fees: 2759,
    ),
  ];

  void clickApply(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      PersonalInfo.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // backgroundColor: Colors.lightBlue[400],
        // resizeToAvoidBottomPadding: false,
        appBar: buildAppBar(context, "View Rates"),
        drawer: MenuDrawer(),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://www.essexhomes.net/storage/app/medialibrary/public/2019/11/48673/conversions/5dd81489aed35696653990-hero.jpg'),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.lightBlue.withOpacity(0.6), BlendMode.dstATop),
            ),
          ),
          alignment: Alignment.topCenter,
          child: SafeArea(
            child: Container(
              child: SingleChildScrollView(
                child: Container(
                  width: 500,
                  height: MediaQuery.of(context).size.height - 80,
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    // padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Assumption(),
                        Container(
                          // padding: EdgeInsets.all(10),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    SwitchButton(),
                                    Text('Rate Alerts'),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    CheckBoxWidget(),
                                    Text('Minimize Closing Costs'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: loantypes.length,
                            itemBuilder: (ctx, i) => RateCard(
                              loantypes[i].id,
                              loantypes[i].year,
                              loantypes[i].rate,
                              loantypes[i].apr,
                              loantypes[i].payment,
                              loantypes[i].fees,
                            ),
                          ),
                        ),
                        Divider(),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () => clickApply(context),
                            child: buildCustomButton1(context, 'Apply'),
                          ),
                        ),
                      ],
                    ),
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

import 'package:flutter/material.dart';

import '../widgets/home_item.dart';
import '../widgets/menu.dart';
import '../widgets/custombutton.dart';
import '../widgets/appbar.dart';
import './loan_purpose_screen.dart';
import './select_lien_screen.dart';

class SelectHome extends StatelessWidget {
  static const routeName = '/select-home';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  void clickBack(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      LoanPurpose.routeName,
    );
  }

  void clickNext(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      SelectLien.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: buildAppBar(context, 'Select mortgage'),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://www.essexhomes.net/storage/app/medialibrary/public/2019/11/48673/conversions/5dd81489aed35696653990-hero.jpg'),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.lightBlue.withOpacity(0.1), BlendMode.dstATop),
            ),
          ),
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 500,
                  color: Colors.grey[50],
                  height: MediaQuery.of(context).size.height - 80,
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            buildSectionTitle(context,
                                'Here are the homes we found that you own*'),
                          ],
                        ),
                        Text('Select which homes you want to analyze'),
                        Divider(
                          color: Colors.black,
                        ),
                        Container(
                          width: double.infinity,
                          child: Column(
                            children: <Widget>[
                              Container(
                                // margin: EdgeInsets.symmetric(horizontal: 30),
                                child: Column(children: <Widget>[
                                  InkWell(
                                    onTap: () => clickNext(context),
                                    child: buildHomeItem(
                                      context,
                                      Image.network(
                                        'https://photos.zillowstatic.com/p_h/ISibgrexsju7ug0000000000.jpg',
                                        height: 250,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  buildHomeItem(
                                    context,
                                    Image.network(
                                      'https://cdn.tollbrothers.com/communities/13201/images-resized/3D3A5189RT2ABAAB_1920.jpg',
                                      height: 250,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.all(30),
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                  width: 500,
                  color: Colors.grey[50],
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            clickBack(context);
                            print('Back button hit');
                          },
                          child: buildCustomButton1(context, 'Back'),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () => clickNext(context),
                          child: buildCustomButton1(context, 'Next'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

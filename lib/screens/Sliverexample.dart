import 'package:flutter/material.dart';
import '../widgets/home_item.dart';
import '../widgets/menu.dart';

class Sliver extends StatelessWidget {
  static const routeName = '/slivers';
  // void clickNext(BuildContext ctx) {
  //   Navigator.of(ctx).pushReplacementNamed(
  //     SelectLien.routeName,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    Widget buildSectionTitle(BuildContext context, String text) {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Text(
          text,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.headline6,
        ),
      );
    }

    return MaterialApp(
      // theme: ThemeData(primaryColor: Colors.lightBlue),
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              // bottom: PreferredSizeWidget.40,
              expandedHeight: 150,
              // pinned: true,
              leading: MenuDrawer(),
              flexibleSpace: FlexibleSpaceBar(
                // title: Text('Select mortgage'),
                background: Container(
                  width: double.infinity,
                  color: Colors.grey[50],
                  // color: Colors.red,
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      buildSectionTitle(context, 'Here are the homes we found that you own*'),
                      Text('Select which homes you want to analyze'),
                    ],
                  ),
                ),
              ),
            ),
            SliverFillRemaining(child:
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(children: <Widget>[
                    InkWell(
                      onTap: () {},
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
             
            ),
          ],
        ),
      ),
    );
  }
}

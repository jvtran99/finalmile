import 'package:flutter/material.dart';

class Assumption extends StatefulWidget {
  @override
  AssumptionState createState() => new AssumptionState();
}

class AssumptionState extends State<Assumption> {
  bool open = false;

  var _creditRangeItems = [
    '>= 740',
    '720-739',
    '700-719',
    '680-699',
    '660-679',
    '640-659',
    '620-639',
    '< 620',
  ];
  var _currentCreditRangeItemSelected = '>= 740';

  var _propertyItems = [
    'Single Family',
    'Condo or townhome',
    '2-4 unit',
  ];
  var _currentPropertyTypeSelected = 'Single Family';

  var _occupancyItems = [
    'Owner Occupied',
    'Second Home',
    'Investment Property',
  ];

  var _currentOccupancySelected = 'Owner Occupied';

  Widget _buildAssumptionHeader(ThemeData theme) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Text('Assumptions: Refinancing a \$400K loan'),
          Spacer(),
          Icon(Icons.arrow_drop_down_circle)
        ],
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
                child: TextFormField(
                  decoration: (InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Zip code',
                  )),
                  initialValue: "78723",
                ),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 40,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: TextFormField(
                      decoration: (InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Credit Score',
                      )),
                      initialValue: " ",
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: DropdownButtonFormField<String>(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: 'Credit Score Range',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      isExpanded: true,
                      items: _creditRangeItems.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
                        );
                      }).toList(),
                      onChanged: (String newValueSelected) {
                        _onDropDownItemSelected(newValueSelected);
                      },
                      value: _currentCreditRangeItemSelected,
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 40,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: TextFormField(
                      decoration: (InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Property Type',
                      )),
                      initialValue: " ",
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: DropdownButtonFormField<String>(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: 'NonUsage-Delete',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      isExpanded: true,
                      items: _propertyItems.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
                        );
                      }).toList(),
                      onChanged: (String newValueSelected) {
                        _onPropertyTypeSelected(newValueSelected);
                      },
                      value: _currentPropertyTypeSelected,
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 40,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: TextFormField(
                      decoration: (InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Occupancy',
                      )),
                      initialValue: " ",
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: DropdownButtonFormField<String>(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: 'NonUsage-Delete',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      isExpanded: true,
                      items: _occupancyItems.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
                        );
                      }).toList(),
                      onChanged: (String newValueSelected) {
                        _onOccupancySelected(newValueSelected);
                      },
                      value: _currentOccupancySelected,
                    ),
                  ),
                ],
              ),
              Container(
                height: 40,
                margin: EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  decoration: (InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Estimated Home Value',
                  )),
                  initialValue: "\$400,000",
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  decoration: (InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Loan Amount',
                  )),
                  initialValue: "\$300,000",
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
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: Colors.grey[800],
            ),
          ),
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _buildAssumptionHeader(theme),
              new AnimatedCrossFade(
                  firstChild: _buildAssumptionEdit(theme),
                  secondChild: new Container(),
                  crossFadeState: open
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: new Duration(milliseconds: 150)),
            ],
          ),
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentCreditRangeItemSelected = newValueSelected;
    });
  }

  void _onPropertyTypeSelected(String newValueSelected) {
    setState(() {
      this._currentPropertyTypeSelected = newValueSelected;
    });
  }

  void _onOccupancySelected(String newValueSelected) {
    setState(() {
      this._currentOccupancySelected = newValueSelected;
    });
  }
}

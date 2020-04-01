import 'package:flutter/material.dart';

import './rates_screen.dart';
import '../widgets/checkbox.dart';
import './loan_purpose_screen.dart';
import '../widgets/menu.dart';
import '../widgets/appbar.dart';
import '../models/personal_info.dart';

class PersonalInfo extends StatefulWidget {
  static const routeName = '/personal-info';

  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final _lastNameFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _socialFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();

  var _editedProduct = PersonInfo1(
    id: null,
    first: '',
    last: '',
    description: '',
    price: 0,
    email: '',
  );

  @override
  void dispose() {
    _lastNameFocusNode.dispose();
    _emailFocusNode.dispose();
    _socialFocusNode.dispose();
    super.dispose();
  }

  void _saveForm() {
    final isValid = _form.currentState.validate();
    if (!isValid) {
      return;
    }
    _form.currentState.save();
    print(_editedProduct.first);
    print(_editedProduct.last);
    print(_editedProduct.price);
    print(_editedProduct.description);
    print(_editedProduct.email);
    clickNext(context);
  }

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

  void clickBack(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      RatesScreenRd.routeName,
    );
  }

  void clickNext(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      LoanPurpose.routeName,
    );
  }

  Widget _bigDisplay() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://www.essexhomes.net/storage/app/medialibrary/public/2019/11/48673/conversions/5dd81489aed35696653990-hero.jpg'),
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.lightBlue.withOpacity(0.6), BlendMode.dstATop),
        ),
      ),
      child: Row(children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(),
        ),
        Expanded(
          flex: 3,
          child: Container(
            child: Container(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Container(
                  child: Container(
                    height: MediaQuery.of(context).size.height - 40,
                    width: 700,
                    // color: Colors.grey[50],
                    color: Colors.grey[50],
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              buildSectionTitle(context,
                                  'Let\'s start with some information about you'),
                            ],
                          ),
                          Text(
                              'By providing this information, it allows us to gather details about your credit worthiness, share your credit score, and provide us with the information needed to give you an accurate quote'),
                          SizedBox(
                            height: 6,
                          ),
                          Form(
                            key: _form,
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'First Name',
                                      ),
                                      textInputAction: TextInputAction.next,
                                      onFieldSubmitted: (_) {
                                        FocusScope.of(context)
                                            .requestFocus(_lastNameFocusNode);
                                      },
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please provide a value.';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _editedProduct = PersonInfo1(
                                          id: null,
                                          first: value,
                                          last: _editedProduct.last,
                                          description:
                                              _editedProduct.description,
                                          price: _editedProduct.price,
                                          email: _editedProduct.email,
                                        );
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Last Name',
                                      ),
                                      textInputAction: TextInputAction.next,
                                      onFieldSubmitted: (_) {
                                        FocusScope.of(context)
                                            .requestFocus(_socialFocusNode);
                                      },
                                      focusNode: _lastNameFocusNode,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please provide a value.';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _editedProduct = PersonInfo1(
                                          id: null,
                                          first: _editedProduct.first,
                                          last: value,
                                          description:
                                              _editedProduct.description,
                                          price: _editedProduct.price,
                                          email: _editedProduct.email,
                                        );
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Social Security Number',
                                      ),
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.number,
                                      focusNode: _socialFocusNode,
                                      onFieldSubmitted: (_) {
                                        FocusScope.of(context)
                                            .requestFocus(_emailFocusNode);
                                      },
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please enter a value';
                                        }
                                        if (value.length < 9 &&
                                            value.length > 0) {
                                          return 'Social must have nine digits, no spaces or dashes';
                                        }
                                        if (double.tryParse(value) == null) {
                                          return 'Please enter a valid social. 601 00 0000';
                                        }
                                      },
                                      onSaved: (value) {
                                        _editedProduct = PersonInfo1(
                                          id: null,
                                          first: _editedProduct.first,
                                          last: _editedProduct.last,
                                          description:
                                              _editedProduct.description,
                                          price: double.parse(value),
                                          email: _editedProduct.email,
                                        );
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Email',
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                      focusNode: _emailFocusNode,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please enter an email address.';
                                        }
                                        if (!value.endsWith('.com') &&
                                            !value.endsWith('.org')) {
                                          return 'Please enter a valid email address.';
                                        }
                                        if (!value.contains('@')) {
                                          return 'Please enter a valid @ email address.';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _editedProduct = PersonInfo1(
                                          id: null,
                                          first: _editedProduct.first,
                                          last: _editedProduct.last,
                                          description:
                                              _editedProduct.description,
                                          price: _editedProduct.price,
                                          email: value,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              CheckBoxWidget(),
                              Expanded(
                                child: Text(
                                  "I agree that my data can be used for the purposes noted below*",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "By checking the box, you agree that we can share your personal data with third parties such as mortgage providers, service partners and other affiliates, so these parties can use your data to improve your experience.  You agree that our trusted partners have permission to share your identity, credit, income, employment, and asset information with Early Mortgage.  You authorize Early Mortgage to redirect you to our partners' secure website if necessary.  Your information is subject to the Terms of Use and Privacy Policy of Certainty.",
                            style: TextStyle(fontSize: 12),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              FlatButton(
                                onPressed: _saveForm,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      'Submit',
                                      style: TextStyle(
                                        color: Colors.cyan[700],
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    SizedBox(width: 10.0),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.cyan[700],
                                      size: 20.0,
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              FlatButton(
                                onPressed: () {
                                  clickNext(context);
                                  print(Text('Next button hit'));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      'Next',
                                      style: TextStyle(
                                        color: Colors.cyan[700],
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    SizedBox(width: 10.0),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.cyan[700],
                                      size: 20.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
        Expanded(
          flex: 1,
          child: Container(),
        ),
      ]),
    );
  }

  Widget _smallDisplay() {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://www.essexhomes.net/storage/app/medialibrary/public/2019/11/48673/conversions/5dd81489aed35696653990-hero.jpg'),
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.lightBlue.withOpacity(0.1), BlendMode.dstATop),
        ),
      ),
      child: Center(
        child: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
          color: Colors.grey[50],
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    buildSectionTitle(context,
                        'Let\'s start with some information about you'),
                  ],
                ),
                Text(
                    'By providing this information, it allows us to gather details about your credit worthiness, share your credit score, and provide us with the information needed to give you an accurate quote'),
                SizedBox(
                  height: 6,
                ),
                Form(
                  key: _form,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'First Name',
                            ),
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (_) {
                              FocusScope.of(context)
                                  .requestFocus(_lastNameFocusNode);
                            },
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please provide a value.';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _editedProduct = PersonInfo1(
                                id: null,
                                first: value,
                                last: _editedProduct.last,
                                description: _editedProduct.description,
                                price: _editedProduct.price,
                                email: _editedProduct.email,
                              );
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Last Name',
                            ),
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (_) {
                              FocusScope.of(context)
                                  .requestFocus(_socialFocusNode);
                            },
                            focusNode: _lastNameFocusNode,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please provide a value.';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _editedProduct = PersonInfo1(
                                id: null,
                                first: _editedProduct.first,
                                last: value,
                                description: _editedProduct.description,
                                price: _editedProduct.price,
                                email: _editedProduct.email,
                              );
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Social Security Number',
                            ),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            focusNode: _socialFocusNode,
                            onFieldSubmitted: (_) {
                              FocusScope.of(context)
                                  .requestFocus(_emailFocusNode);
                            },
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter a value';
                              }
                              if (value.length < 9 && value.length > 0) {
                                return 'Social must have nine digits, no spaces or dashes';
                              }
                              if (double.tryParse(value) == null) {
                                return 'Please enter a valid social. 601 00 0000';
                              }
                            },
                            onSaved: (value) {
                              _editedProduct = PersonInfo1(
                                id: null,
                                first: _editedProduct.first,
                                last: _editedProduct.last,
                                description: _editedProduct.description,
                                price: double.parse(value),
                                email: _editedProduct.email,
                              );
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                            ),
                            keyboardType: TextInputType.emailAddress,
                            focusNode: _emailFocusNode,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter an email address.';
                              }
                              if (!value.endsWith('.com') &&
                                  !value.endsWith('.org')) {
                                return 'Please enter a valid email address.';
                              }
                              if (!value.contains('@')) {
                                return 'Please enter a valid @ email address.';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _editedProduct = PersonInfo1(
                                id: null,
                                first: _editedProduct.first,
                                last: _editedProduct.last,
                                description: _editedProduct.description,
                                price: _editedProduct.price,
                                email: value,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CheckBoxWidget(),
                    Expanded(
                      child: Text(
                        "I agree that my data can be used for the purposes noted below*",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "By checking the box, you agree that we can share your personal data with third parties such as mortgage providers, service partners and other affiliates, so these parties can use your data to improve your experience.  You agree that our trusted partners have permission to share your identity, credit, income, employment, and asset information with Early Mortgage.  You authorize Early Mortgage to redirect you to our partners' secure website if necessary.  Your information is subject to the Terms of Use and Privacy Policy of Certainty.",
                  style: TextStyle(fontSize: 12),
                ),
                // Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      onPressed: _saveForm,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.cyan[700],
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.cyan[700],
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    FlatButton(
                      onPressed: () {
                        clickNext(context);
                        print(Text('Next button hit'));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.cyan[700],
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.cyan[700],
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: buildAppBar(context, "Personal Information"),
      drawer: MenuDrawer(),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 500) {
          return _bigDisplay();
        } else {
          return _smallDisplay();
        }
      }),
    );
  }
}

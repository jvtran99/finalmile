import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/personal_info.dart';

class PersonProvider with ChangeNotifier{
  List<PersonInfo1> _items = [];

  List<PersonInfo1> get items {
    return [...items];
  }

  void addPersonProvider(PersonInfo1 personInfo) {
    const url = 'https://certainty-poc.firebaseio.com/personal.json';
    http.post(
      url,
      body: json.encode({
        'first': personInfo.first,
        'last': personInfo.last,
        'email': personInfo.email,
        'social': personInfo.social,
        'submitted_date': DateTime.now().toString(),
      }),
    );
    notifyListeners();
  }

}
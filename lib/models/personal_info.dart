import 'package:flutter/foundation.dart';

class PersonInfo1 with ChangeNotifier {
  final String id;
  final String first;
  final String last;
  final String description;
  final double price;
  final String email;
  final String social;


  PersonInfo1({
    @required this.id,
    @required this.first,
    @required this.last,
    @required this.description,
    @required this.price,
    @required this.email,
    @required this.social,
  });

}

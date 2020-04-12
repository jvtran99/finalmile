import 'package:flutter/foundation.dart';

class AssumptionInfo with ChangeNotifier{
  final int zipcode;
  final int creditscore;
  final String propertytype;
  final String occupancy;
  final double esthomevalue;
  final double loanamount;

  AssumptionInfo({
    @required this.zipcode,
    @required this.creditscore,
    @required this.propertytype,
    @required this.occupancy,
    @required this.esthomevalue,
    @required this.loanamount,
  });
}
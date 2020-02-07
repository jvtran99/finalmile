import 'package:flutter/foundation.dart';

class LoanType {
  final String id;
  final int year;
  final double rate;
  final double apr;
  final double payment;
  final double fees;

  LoanType({
    @required this.id,
    @required this.year,
    @required this.rate,
    @required this.apr,
    @required this.payment,
    @required this.fees,
  });
}

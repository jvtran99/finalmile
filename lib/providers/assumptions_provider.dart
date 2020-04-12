import 'package:flutter/material.dart';

import '../models/assumption_info.dart';

class AssumptionProvider with ChangeNotifier {
  List<AssumptionInfo> _items = [];

  List<AssumptionInfo> get items {
    return [..._items];
  }

  updateAssumptionProvider(AssumptionInfo assumptionInfo){
    //TODO
    notifyListeners();
  }
}

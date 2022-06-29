import 'dart:convert';

import 'package:flutter/services.dart';

class Data {
  List items = [];

  // Fetch content from the json file
  Future<List> readJsonData() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);

    items = data["bankname"];
    print(items);
    return items;
  }
}

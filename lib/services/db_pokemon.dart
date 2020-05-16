import 'package:http/http.dart' as http;
import 'dart:convert';
import '../constants.dart';

class DataModel {
  Future getData() async {
    http.Response response = await http.get(dbURL);
    var data = jsonDecode(response.body);
    return data;
  }
}

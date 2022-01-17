import 'dart:convert';

import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;

class CovidController extends GetxController {
  void getDataRumahsakit(List<String> fixstasiun) async {
    final response = await http
        .get(Uri.parse('https://dekontaminasi.com/api/id/covid19/hospitals'));
    final parsing = jsonDecode(response.body) as Map<String, dynamic>;
    for (int i = 0; i < parsing.length; i++) {
      return fixstasiun = parsing[i]['name'];
    }
  }
}

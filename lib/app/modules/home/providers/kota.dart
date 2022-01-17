import 'dart:convert';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class KotaProv extends GetConnect {
  void getStasiun() async {
    final response = await http
        .get(Uri.parse('https://dekontaminasi.com/api/id/covid19/hospitals'));

    final parsing = jsonDecode(response.body);
  }
}

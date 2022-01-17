import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
//   deklarasi in dulu si linknya
//   final response = await http
//       .get(Uri.parse('https://dekontaminasi.com/api/id/covid19/hospitals'));
// ubah ke jsondecode untuk mengambil response body
//   final parsing = jsonDecode(response.body);

// nah pemanggilannya tinggal variable yang sudah di decode [index ke berapa] ['nama end point nya']
//   for (int i = 0; i < parsing.length; i++) {
//     print("---------------------------------------------");
//     print(parsing[i]['name']);
//     print(parsing[i]['address']);
//     print(parsing[i]['region']);
//     print("---------------------------------------------");
//   }

  //final response = await http
  //  .get(Uri.parse('https://datasekolahapi.herokuapp.com/api/data'));
//ubah ke jsondecode untuk mengambil response body
  //final parsing = jsonDecode(response.body);
//ini untuk json yang bersarang
  //var baru = parsing['SD']['Jakarta']['Cilandak'];
  // print(parsing);
  // for (int i = 0; i < baru.length; i++) {
  //   print("---------------------------------------------");
  //   print("jumlah sekolah di sini ada " + baru.length.toString());
  //   print(baru[i]['nama']);
  //   print(baru[i]['npsn']);
  //   print(baru[i]['desa']);
  //   print("---------------------------------------------");
  // }
}

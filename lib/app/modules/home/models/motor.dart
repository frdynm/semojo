// To parse this JSON data, do
//
//     final motor = motorFromJson(jsonString);

import 'dart:convert';

List<Motor> motorFromJson(String str) =>
    List<Motor>.from(json.decode(str).map((x) => Motor.fromJson(x)));

String motorToJson(List<Motor> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Motor {
  Motor({
    this.name,
    this.address,
    this.region,
    this.phone,
    this.province,
  });

  final String? name;
  final String? address;
  final String? region;
  final String? phone;
  final String? province;

  factory Motor.fromJson(Map<String, dynamic> json) => Motor(
        name: json["name"],
        address: json["address"],
        region: json["region"],
        phone: json["phone"] == null ? null : json["phone"],
        province: json["province"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "address": address,
        "region": region,
        "phone": phone == null ? null : phone,
        "province": province,
      };
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:semojo/app/modules/home/controllers/covidcontroller.dart';
import 'package:semojo/app/modules/home/widget/disekitarmu.dart';
import 'package:semojo/app/modules/home/widget/dropdown.dart';
import 'package:semojo/app/modules/home/widget/katalog.dart';
import 'package:semojo/app/modules/home/widget/scrollpage.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final List<String> stasiun = <String>['Stasiun Lempuyangan', 'Stasiuan Tugu'];
  final List<String> entries = <String>[
    '1',
    '[2]',
    '1',
    '[2]',
    '1',
    '[2]',
    '1',
    '[2]',
    '1',
    '[2]'
  ];

  int _selectedNavbar = 0;

  //bikin import controler
  final CovidController covidController = Get.put(CovidController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Dropdown(stasiun: stasiun),
              scroll_banner_homepage(),
              SizedBox(height: 5),
              disekitarmu(),
              SizedBox(height: 5),
              Katalog()
              //batas widhet disekitarmu
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.fact_check_outlined), label: 'pesanan'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Favorit'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Akun')
        ],
        currentIndex: 0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}

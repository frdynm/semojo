import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:semojo/app/routes/app_pages.dart';

class Dropdown extends StatelessWidget {
  const Dropdown({
    Key? key,
    required this.stasiun,
  }) : super(key: key);

  final List<String> stasiun;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: Get.width * 0.60,
          height: 60,
          child: DropdownSearch<String>(
            dropdownSearchDecoration: InputDecoration(border: InputBorder.none),
            mode: Mode.BOTTOM_SHEET,
            showSelectedItems: true,
            items: stasiun,
            selectedItem: "Stasiun Lempuyangan",
          ),
        ),
        InkWell(
          onTap: () => Get.offAllNamed(Routes.LOGIN),
          child: Container(
              width: 25,
              height: 25,
              child: Icon(
                Icons.alarm_sharp,
              )),
        )
      ],
    );
  }
}

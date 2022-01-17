import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:http/http.dart';

class Katalog extends StatelessWidget {
  const Katalog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.47,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Center(
                child: Column(
                  children: [
                    Center(
                      child: Card(
                        color: Colors.grey[50],
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 125,
                              child: Image.network(
                                'https://www.yamaha-motor.co.id/uploads/products/2020112414202694046L11317.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "Honda Beat",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "110cc",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey[26]),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('$index' + 'k/Hari',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                            Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    ">",
                                    textAlign: TextAlign.center,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

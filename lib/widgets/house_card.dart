import 'package:flutter/material.dart';
import 'package:trade_app/customs.dart/customs.dart';
import 'package:trade_app/utils/app_constants.dart';

class HouseCardWidget extends StatelessWidget {
  final String image;
  final String title;

  const HouseCardWidget({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      width: 370,
      decoration: BoxDecoration(
        color: AppConstants.primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: Image.asset(image, width: 370, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(left: 15, top: 5),
            child: Customs.text(
              '520 N Btoudry Ave Los Angeles',
              color: const Color.fromARGB(129, 228, 228, 228),
              fontWeight: FontWeight.bold,
            ),
          ),
          // icons section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                // 1
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.bed, color: Color(0xFFF5C945)),
                      SizedBox(width: 5),
                      Customs.text(
                        '4 Beds',
                        color: const Color.fromARGB(129, 228, 228, 228),
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                // 2
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Icon(Icons.bathtub_sharp, color: Color(0xFFF5C945)),
                      SizedBox(width: 5),
                      Customs.text(
                        '4 Baths',
                        color: const Color.fromARGB(129, 228, 228, 228),
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                // 3
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Icon(Icons.garage_rounded, color: Color(0xFFF5C945)),
                      SizedBox(width: 5),
                      Customs.text(
                        '1 Garage',
                        color: const Color.fromARGB(129, 228, 228, 228),
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

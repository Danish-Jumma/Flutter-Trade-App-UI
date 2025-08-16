import 'package:flutter/material.dart';
import 'package:trade_app/customs.dart/customs.dart';
import 'package:trade_app/utils/app_constants.dart';

class DetailsView extends StatelessWidget {
  String image;
  String title;
  DetailsView({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ****** appbar ********
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Customs.text(
                      'Details',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppConstants.cardButtonColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: AppConstants.primaryColor,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // ******** body *******
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(15),
                  child: Image.asset(image, width: 370, fit: BoxFit.cover),
                ),

                ///
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            title,
                            style: TextStyle(
                              color: AppConstants.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsGeometry.only(top: 5),
                          child: Customs.text(
                            '520 N Btoudry Ave Los Angeles',
                            color: AppConstants.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // icons section
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
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
                                      color: AppConstants.primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                              // 2
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.bathtub_sharp,
                                      color: Color(0xFFF5C945),
                                    ),
                                    SizedBox(width: 5),
                                    Customs.text(
                                      '4 Baths',
                                      color: AppConstants.primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                              // 3
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.garage_rounded,
                                      color: Color(0xFFF5C945),
                                    ),
                                    SizedBox(width: 5),
                                    Customs.text(
                                      '1 Garage',
                                      color: AppConstants.primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppConstants.cardButtonColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.save,
                            color: AppConstants.primaryColor,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),

                ListTile(
                  contentPadding: EdgeInsets.zero,
                  // leading
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/rabeeca.jpg'),
                  ),
                  // title
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Customs.text(
                        'Rabeeca Tetha',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      SizedBox(height: 2),
                      Customs.text(
                        'Owner Craftsman House',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),

                  // trailing
                  trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    width: 90,
                    decoration: BoxDecoration(
                      color: AppConstants.primaryColor,
                      borderRadius: BorderRadius.circular(7),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.call, color: Colors.white, size: 27),
                        Customs.text(
                          'Call',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // content
                Customs.text(
                  'Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garahe. amazing curb oppeal and enterain areawater vews. Tons of built-ins & extras. Read More',
                  fontSize: 15,
                ),
                SizedBox(height: 20),
                Customs.text(
                  'Gallery',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/apartement.webp',
                        width: 85,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/farmhouse.jpg',
                        width: 85,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/flat.jpg',
                        width: 85,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/townhouse.avif',
                        width: 85,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // price
                Customs.text('price', fontSize: 18),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Customs.text(
                      '5990000-Dollars',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: AppConstants.primaryColor,
                      ),
                      child: Customs.text(
                        'BUY NOW',
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

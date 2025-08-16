import 'package:flutter/material.dart';
import 'package:trade_app/customs.dart/customs.dart';
import 'package:trade_app/utils/app_constants.dart';
import 'package:trade_app/views/details_view.dart';
import 'package:trade_app/widgets/card_button.dart';
import 'package:trade_app/widgets/house_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  final List<String> categoryList = [
    'House',
    'Apartment',
    'Flat',
    'Farmhouse',
    'Penthouse',
    'Townhouse',
  ];

  final List card = [
    {'image': 'assets/images/house-1.png', 'title': 'CRAFTSMAN HOUSE 1'},
    {'image': 'assets/images/apartement.webp', 'title': 'APARTMENT'},
    {'image': 'assets/images/flat.jpg', 'title': 'FLAT'},
    {'image': 'assets/images/farmhouse.jpg', 'title': 'FARMHOUSE'},
    {'image': 'assets/images/penthouse.jfif', 'title': 'PENTHOUSE'},
    {'image': 'assets/images/townhouse.avif', 'title': 'TOWNHOUSE'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ********** appbar **********
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Customs.text('Location', fontSize: 13),
                        Customs.text(
                          'Los Angeles, CA',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    // profile
                    Image.asset(
                      'assets/images/profile.png',
                      width: 44,
                      height: 44,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // ********** main section ***********
                SizedBox(
                  width: 250,
                  child: Customs.text(
                    'Discover Best Suitable Property',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    lineHeight: 1.1,
                  ),
                ),
                const SizedBox(height: 20),

                // category buttons
                SizedBox(
                  height: 55,
                  child: CardButtonWidget(
                    categoryList: categoryList,
                    currentIndex: currentIndex,
                    onTap: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
                SizedBox(height: 20),
                Customs.text(
                  'Best for you',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),

                const SizedBox(height: 15),

                // house card according to selection
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsView(
                          image: card[currentIndex]['image'],
                          title: card[currentIndex]['title'],
                        ),
                      ),
                    );
                  },
                  child: HouseCardWidget(
                    image: card[currentIndex]['image'],
                    title: card[currentIndex]['title'],
                  ),
                ),

                const SizedBox(height: 20),

                Customs.text(
                  'Nearby your location',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 15),
                // last card
                Container(
                  decoration: BoxDecoration(
                    color: AppConstants.cardButtonColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.infinity,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(10),
                        child: Image.asset(
                          'assets/images/ranch.jpg',
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'RANCH HOME',
                              style: TextStyle(
                                color: AppConstants.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: AppConstants.primayFont,
                              ),
                            ),
                            SizedBox(height: 5),
                            Customs.text(
                              '520 N Btoudry Ave Los Angeles',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                // 1
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.bed,
                                        color: Color(0xFFF5C945),
                                        size: 20,
                                      ),
                                      SizedBox(width: 5),
                                      Customs.text(
                                        '4 Beds',
                                        fontSize: 12,

                                        fontWeight: FontWeight.bold,
                                      ),
                                    ],
                                  ),
                                ),
                                // 2
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.bathtub_sharp,
                                        color: Color(0xFFF5C945),
                                        size: 20,
                                      ),
                                      SizedBox(width: 5),
                                      Customs.text(
                                        '4 Baths',
                                        fontSize: 12,

                                        fontWeight: FontWeight.bold,
                                      ),
                                    ],
                                  ),
                                ),
                                // 3
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.garage_rounded,
                                        size: 20,
                                        color: Color(0xFFF5C945),
                                      ),
                                      SizedBox(width: 5),
                                      Customs.text(
                                        '1 Garage',
                                        fontSize: 12,

                                        fontWeight: FontWeight.bold,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

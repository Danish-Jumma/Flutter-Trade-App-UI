import 'package:flutter/material.dart';
import 'package:trade_app/utils/app_constants.dart';

class CardButtonWidget extends StatelessWidget {
  final List<String> categoryList;
  final int currentIndex;
  final Function(int) onTap;

  const CardButtonWidget({
    super.key,
    required this.categoryList,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categoryList.length,
      itemBuilder: (context, index) {
        final bool isSelected = index == currentIndex;
        return GestureDetector(
          onTap: () => onTap(index),
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 6),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppConstants.primaryColor
                  : AppConstants.cardButtonColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              categoryList[index],
              style: TextStyle(
                color: isSelected ? Colors.white : AppConstants.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: AppConstants.primayFont,
              ),
            ),
          ),
        );
      },
    );
  }
}

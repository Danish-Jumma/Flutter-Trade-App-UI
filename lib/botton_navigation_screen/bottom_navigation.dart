import 'package:flutter/material.dart';
import 'package:trade_app/utils/app_constants.dart';
import 'package:trade_app/views/home_view.dart';

class BottomNavigationPages extends StatefulWidget {
  const BottomNavigationPages({super.key});

  @override
  State<BottomNavigationPages> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationPages> {
  final List<Widget> _pages = [HomeView(), HomeView(), HomeView(), HomeView()];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 18), // 👈 space above the bar
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            backgroundColor: AppConstants.primaryColor,
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,

            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: currentIndex == 0
                    ? const Icon(Icons.home) // filled when active
                    : const Icon(Icons.home_outlined), // outlined when inactive
                label: '',
              ),
              BottomNavigationBarItem(
                icon: currentIndex == 1
                    ? const Icon(Icons.favorite) // filled when active
                    : const Icon(
                        Icons.favorite_border,
                      ), // outlined when inactive
                label: '',
              ),
              BottomNavigationBarItem(
                icon: currentIndex == 2
                    ? const Icon(
                        Icons.search,
                      ) // active (could switch to bold/filled search)
                    : const Icon(Icons.search_outlined), // inactive
                label: '',
              ),
              BottomNavigationBarItem(
                icon: currentIndex == 3
                    ? const Icon(Icons.person) // active
                    : const Icon(Icons.person_outline), // inactive
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

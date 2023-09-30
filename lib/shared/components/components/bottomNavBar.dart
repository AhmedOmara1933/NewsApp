import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onItemSelected;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;

  const BottomNavBar(
      {super.key,
      required this.selectedIndex,
      required this.onItemSelected,
      this.selectedItemColor = Colors.blue,
      this.unselectedItemColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: BottomNavyBar(
        backgroundColor: Colors.grey[200],
        selectedIndex: selectedIndex,
        onItemSelected: onItemSelected,
        containerHeight: 70,
        iconSize: 30.0,
        items: [
          BottomNavyBarItem(
              inactiveColor: unselectedItemColor,
              activeColor: selectedItemColor!,
              icon: const Icon(
                Icons.business,
              ),
              title: const Text(
                'Business',
              ),
              textAlign: TextAlign.center),
          BottomNavyBarItem(
            inactiveColor: unselectedItemColor,
            activeColor: selectedItemColor!,
            icon: const Icon(
              Icons.sports,
            ),
            title: const Text('Sports', textAlign: TextAlign.center),
          ),
          BottomNavyBarItem(
            inactiveColor: unselectedItemColor,
            activeColor: selectedItemColor!,
            icon: const Icon(
              Icons.science,
            ),
            title: const Text('Science', textAlign: TextAlign.center),
          ),
          BottomNavyBarItem(
            inactiveColor: unselectedItemColor,
            activeColor: selectedItemColor!,
            icon: const Icon(
              Icons.settings,
            ),
            title: const Text('Settings', textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}

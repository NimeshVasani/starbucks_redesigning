import 'package:flutter/material.dart';
import 'package:starbucks_redesigning/ui/screens/placeorderscreen.dart';

import 'homescreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  static const List<Widget> _bottomNavScreens = [
    HomeScreen(),
    PlaceOrderScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
          child:_bottomNavScreens.elementAt(selectedIndex)),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 110, right: 50, bottom: 10),
          child: Container(
            height: 70,
            clipBehavior: Clip.hardEdge,
            decoration:  BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                color: Colors.green.shade200.withOpacity(0.5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
              child: BottomNavigationBar(
                unselectedItemColor: Colors.black54,
                selectedItemColor: Colors.black87,
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                currentIndex: selectedIndex,
                onTap: (int index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined, color: Colors.black54,size: 30,),
                    activeIcon: Icon(Icons.home_outlined, color: Colors.black87,size: 30,),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.edit_note_sharp, color: Colors.black54,size: 30,),
                    activeIcon: Icon(Icons.edit_note_sharp, color: Colors.black87,size: 30,),
                    label: "Orders",
                  ),
                  BottomNavigationBarItem(
                    icon:
                    Icon(Icons.credit_card_outlined, color: Colors.black54,size: 30,),
                    activeIcon: Icon(Icons.credit_card_outlined, color: Colors.black87,size: 30,),
                    label: "Cards",
                  ),

                ],

                iconSize: 35,

                backgroundColor: Colors.transparent,
                showSelectedLabels: true,
                showUnselectedLabels: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

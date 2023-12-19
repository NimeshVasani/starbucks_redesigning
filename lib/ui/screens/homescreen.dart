import 'package:flutter/material.dart';
import 'package:starbucks_redesigning/ui/widgets/customcoffeeitems.dart';
import 'package:starbucks_redesigning/ui/widgets/customtabbar.dart';

import '../widgets/customhomescreenappbar.dart';
import '../widgets/homescreencard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var listImage = [
    'assets/images/cup_6.png',
    'assets/images/cup_5.png',
    'assets/images/cup_4.png',
    'assets/images/cup_3.png',
    'assets/images/cup_2.png',
    'assets/images/cup_1.png',
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customHomeScreenAppbar(),
      body: SafeArea(
          maintainBottomViewPadding: true,
          bottom: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              homeScreenCard(context),
              const SizedBox(
                height: 30,
              ),
               Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomTabBar(
                      selected: 2,
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 170.0),
                          child: ListView.builder(itemBuilder: (BuildContext context, int index){
                            return   CustomCoffeeItems(image:listImage[index]);
                          },
                            shrinkWrap: true,
                          itemCount: 6,),
                        ))
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

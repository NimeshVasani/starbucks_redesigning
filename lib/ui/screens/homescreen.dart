import 'package:flutter/material.dart';
import 'package:starbucks_redesigning/ui/widgets/customtabbar.dart';

import '../widgets/customhomescreenappbar.dart';
import '../widgets/homescreencard.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            children: [
              homeScreenCard(context),
              const SizedBox(height: 30,),
              const CustomTabBar(selected: 2,)
            ],
          )),
    );
  }
}
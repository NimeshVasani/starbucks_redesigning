import 'package:flutter/material.dart';

AppBar placeOrderScreenAppBar(){
  return AppBar(
    automaticallyImplyLeading: false,
      toolbarHeight: 350,
      flexibleSpace: Stack(
        alignment: Alignment.topLeft,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
                color: Color(0xFF023020),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100.0, top: 120.0),
            child: Image.asset(
              'assets/images/cup_2.png',
              height: 280,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 30.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey.withOpacity(0.9)),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black87,
              ),
            ),
          ),
          Positioned(
              right: -100,
              child: RotatedBox(
                  quarterTurns: 1,
                  child: SizedBox(
                      height: 300,
                      width: 500,
                      child: Image.asset(
                        'assets/images/leaf_card.png',
                        fit: BoxFit.contain,
                      ))))
        ],
      ));
}
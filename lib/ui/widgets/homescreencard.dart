import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget homeScreenCard(BuildContext context) {
  return Center(
    child: SizedBox(
        width: MediaQuery.of(context).size.width - 50,
        height: 220,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 4,
              child: Card(
                surfaceTintColor: Colors.transparent,
                clipBehavior: Clip.hardEdge,
                elevation: 1,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                )),
                child: Container(
                  width: MediaQuery.of(context).size.width - 110,
                  height: 200,
                  color: Colors.green.shade50.withOpacity(0.7),
                ),
              ),
            ),
            Positioned(
              bottom: 12,
              child: Card(
                surfaceTintColor: Colors.transparent,
                clipBehavior: Clip.hardEdge,
                elevation: 2,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                )),
                child: Container(
                  width: MediaQuery.of(context).size.width - 80,
                  height: 110,
                  color: Colors.green.shade100.withOpacity(0.5),
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: Card(
                surfaceTintColor: Colors.transparent,
                clipBehavior: Clip.hardEdge,
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                )),
                child: Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 190,
                  color: Colors.green.shade200.withOpacity(0.5),
                  child: Stack(
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30.0, left: 10.0),
                            child: Text(
                              'Good Morning, Chad',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFF006241)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'A good day starts with a cup of coffee',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFF006241)),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20.0,left: 10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                FaIcon(FontAwesomeIcons.gift,size: 15,color:  Color(0xFF006241),),
                                SizedBox(width: 5,),
                                Text(
                                  'Gift Cards.',
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF006241)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        left: 250,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Image.asset(
                            'assets/images/cup_3.png',
                            height: 180,
                            width: 145,
                            fit: BoxFit.contain,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            // Add more Positioned widgets for additional cards
          ],
        )),
  );
}

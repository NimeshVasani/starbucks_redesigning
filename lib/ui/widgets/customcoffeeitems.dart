import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:starbucks_redesigning/ui/screens/placeorderscreen.dart';

class CustomCoffeeItems extends StatefulWidget {
  final String image;
  const CustomCoffeeItems({super.key, required this.image});

  @override
  State<CustomCoffeeItems> createState() => _CustomCoffeeItemsState();
}

class _CustomCoffeeItemsState extends State<CustomCoffeeItems> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context){return const PlaceOrderScreen();}));
      },
      child: Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 40.0),
          child: SizedBox(
              height: 200,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                   Card(
                      clipBehavior: Clip.hardEdge,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      margin: EdgeInsets.zero,
                      surfaceTintColor: Colors.transparent,
                      color: Colors.transparent,
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.green.shade200.withOpacity(0.5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 110.0, top: 10.0, right: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Vanilla Bean Crème Frappuccino',
                                maxLines: 2,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '\$ 3.2 -5.4',
                                maxLines: 2,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF006241)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(FontAwesomeIcons.solidHeart,color: Colors.grey,size: 20.0,)
                                  ],
                                ),
                              )
                            ],

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.antiAlias,
                        children: [
                          Container(
                            height: 130,
                            width: 100,
                            decoration: BoxDecoration(
                                color: const Color(0xFF023020),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Positioned(
                              bottom: 70,
                              child: Image.asset(
                                widget.image,
                                height: 140,
                                width: 80,
                                fit: BoxFit.fitHeight,
                              )),
                        ]),
                  ),
                ],
              )),

      ),
    );
  }
}

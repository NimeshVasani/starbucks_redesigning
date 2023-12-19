import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:starbucks_redesigning/ui/widgets/placeorderscreenappbar.dart';

class PlaceOrderScreen extends StatefulWidget {
  const PlaceOrderScreen({super.key});

  @override
  State<PlaceOrderScreen> createState() => _PlaceOrderScreenState();
}

class _PlaceOrderScreenState extends State<PlaceOrderScreen> {
  String selectedValue = 'Whole Milk';
  String selectedValue2 = 'Vanilla Cream';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: placeOrderScreenAppBar(),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 50.0, right: 20.0, top: 20.0, bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'White Chocolate Frappuccino',
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'A smooth blend of white chocolate sauce, milk and ice topped with whipped cream for a remarkable flavor that surprisingly wows.',
                  style: TextStyle(fontSize: 14.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 40),
                      child: Text(
                        'Size',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Spacer(),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/cup_2.png',
                          height: 70,
                          width: 70,
                        ),
                        const Text(
                          'Tall',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                              color: Color(0xFF006241)),
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/cup_2.png',
                          height: 80,
                          width: 80,
                        ),
                        const Text(
                          'Grande',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                              color: Color(0xFF006241)),
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/cup_2.png',
                          height: 100,
                          width: 90,
                        ),
                        const Text(
                          'Venti',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                              color: Color(0xFF006241)),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Milk',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    DropdownButton(
                        underline: Container(),
                        value: selectedValue,
                        items: [
                          DropdownMenuItem(
                            value: 'Whole Milk',
                            child: Text(
                              'Whole Milk',
                              style: TextStyle(
                                  color:
                                      const Color(0xFF006241).withOpacity(0.8),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'Half Milk',
                            child: Text('Half Milk',
                                style: TextStyle(
                                    color: const Color(0xFF006241)
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.w600)),
                          ),
                          DropdownMenuItem(
                            value: 'No Milk',
                            child: Text('No Milk',
                                style: TextStyle(
                                    color: const Color(0xFF006241)
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                        onChanged: (newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        }),
                    const Spacer(
                      flex: 1,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Toppings',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    DropdownButton(
                        underline: Container(),
                        value: selectedValue2,
                        items: [
                          DropdownMenuItem(
                            value: 'With Whipped Cream',
                            child: Text(
                              'With Whipped Cream',
                              style: TextStyle(
                                  color:
                                      const Color(0xFF006241).withOpacity(0.8),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'Half & Half Cream',
                            child: Text('Half Milk',
                                style: TextStyle(
                                    color: const Color(0xFF006241)
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.w600)),
                          ),
                          DropdownMenuItem(
                            value: 'Vanilla Cream',
                            child: Text('Vanilla Cream',
                                style: TextStyle(
                                    color: const Color(0xFF006241)
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                        onChanged: (newValue) {
                          setState(() {
                            selectedValue2 = newValue!;
                          });
                        }),
                    const Spacer(
                      flex: 1,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      '-',
                      style:
                          TextStyle(color: Color(0xFF006241), fontSize: 30.0),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.green.shade200.withOpacity(0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: const Center(
                        child: Text(
                          '1',
                          style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.add,
                      color: Color(0xFF006241),
                      size: 20,
                    ),
                    const Spacer(),
                    Container(
                      height: 70,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.green.shade200.withOpacity(0.5),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: const Center(
                        child: Text(
                          '\$ 5.2',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.green.shade200.withOpacity(0.5),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15))),
                      child: const Center(
                        child: Icon(FontAwesomeIcons.forward,color: Color(0xFF006241),)
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

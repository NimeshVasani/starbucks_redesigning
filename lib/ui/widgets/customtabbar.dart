import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final int selected;

  const CustomTabBar({super.key, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 70,
        decoration: BoxDecoration(
            color: Colors.green.shade200.withOpacity(0.5),
            borderRadius:
                const BorderRadius.only(topRight: Radius.circular(70))),
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0, bottom: 40.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Hot Coffees',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight:
                              selected ==0 ? FontWeight.bold : FontWeight.w600),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 20,
                    width: 3,
                      color: selected ==0 ? Colors.black: Colors.transparent
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text('Cold Coffees',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight:
                                selected ==1? FontWeight.bold : FontWeight.w600)),
                  ),
                  const Spacer(),
                  Container(
                    height: 20,
                    width: 3,
                    color: selected ==1 ? Colors.black: Colors.transparent

                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text('Frappucino',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight:
                                selected==2 ? FontWeight.bold : FontWeight.w600)),
                  ),
                  const Spacer(),
                  Container(
                    height: 20,
                    width: 3,
                    color: selected ==2 ? Colors.black: Colors.transparent,
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text('Hot Teas',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight:
                                selected ==3? FontWeight.bold : FontWeight.w600)),
                  ),
                  const Spacer(),
                  Container(
                    height: 20,
                    width: 3,
                      color: selected ==3 ? Colors.black: Colors.transparent
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

PreferredSizeWidget customHomeScreenAppbar() {
  return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      leading: const Padding(
        padding: EdgeInsets.only(left: 30.0),
        child: Icon(
          Icons.grid_view_rounded,
          color: Colors.black54,
          size: 30,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 35.0),
          child: FaIcon(
            FontAwesomeIcons.search,
            color: Colors.black54,
            size: 20,
          ),
        ),
      ]);
}

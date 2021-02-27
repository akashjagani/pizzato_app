import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Footers extends ChangeNotifier {
  Widget floatingActionButton(context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFFFFC46B),
      onPressed: () {},
      child: Icon(
        EvaIcons.shoppingBagOutline,
        color: Colors.black,
      ),
    );
  }
}

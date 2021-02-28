import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    // print(date);
    // String d = date.substring(0, date.indexOf('T'));
    // String t = date.substring(date.indexOf('T') + 1, date.indexOf('.'));
    // print('${DateTime.now()}');
    // DateTime dateTime = DateTime.parse("$d $t.00");
    // print(dateTime);
    // print(DateFormat.jms().format(dateTime));
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  IconButton(
                    icon: Icon(FontAwesomeIcons.trash),
                    onPressed: () {
                      print("2021-02-26T09:15:38.000Z");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget appBar(context) {
    return AppBar();
  }
}

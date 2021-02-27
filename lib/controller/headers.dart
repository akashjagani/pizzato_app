import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Headers extends ChangeNotifier {
  Widget appBar(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Builder(
          builder: (context) => IconButton(
            icon: Icon(
              FontAwesomeIcons.alignLeft,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        Row(
          children: [
            Icon(
              FontAwesomeIcons.locationArrow,
              color: Color(0xFFBCBCBC),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 50,
            ),
            Text(
              'New Police Area',
              style: TextStyle(
                color: Color(0xFFBCBCBC),
                fontWeight: FontWeight.w500,
                fontSize: MediaQuery.of(context).size.width / 30,
              ),
            ),
          ],
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.search,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget headerText(context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 30,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'What would you like\n',
                style: GoogleFonts.ubuntu(
                  fontSize: MediaQuery.of(context).size.width / 18,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: 'to eat?',
                style: GoogleFonts.ubuntu(
                  fontSize: MediaQuery.of(context).size.width / 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }
}

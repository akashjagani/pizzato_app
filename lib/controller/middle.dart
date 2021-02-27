import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizzato/screens/details_screen.dart';

class MiddleHelpers extends ChangeNotifier {
  Widget texFav(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Favorite ',
                  style: GoogleFonts.ubuntu(
                    fontSize: MediaQuery.of(context).size.width / 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: 'dishes',
                  style: GoogleFonts.ubuntu(
                    fontSize: MediaQuery.of(context).size.width / 21,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget dataFav(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: double.infinity,
        color: Colors.transparent,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(
              left: 8,
              top: 3,
              bottom: 3,
              right: 10,
            ),
            child: InkResponse(
              onTap: () {
                print('Hello');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ),
                );
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 2.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 145,
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Image.network(
                            'https://freepngimg.com/thumb/pizza/19-pizza-png-image.png',
                          ),
                        ),
                        Text(
                          'Garlic',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text('Rs. 450/-'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget texBusiness(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Business lunch',
                  style: GoogleFonts.ubuntu(
                    fontSize: MediaQuery.of(context).size.width / 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget dataBusiness(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        width: double.infinity,
        color: Colors.transparent,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(
              top: 5,
              left: 3,
              right: 3,
              bottom: 10,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height / 6,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Double Deluxe'),
                            Text('Double Deluxe'),
                            Text('Double Deluxe'),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          'https://freepngimg.com/thumb/pizza/19-pizza-png-image.png',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pizzato/controller/footers.dart';
import 'package:pizzato/controller/headers.dart';
import 'package:pizzato/controller/middle.dart';
import 'package:pizzato/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('hello');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Headers()),
        ChangeNotifierProvider.value(value: MiddleHelpers()),
        ChangeNotifierProvider.value(value: Footers()),
      ],
      child: MaterialApp(
        title: 'Pizzato',
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}

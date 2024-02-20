import 'package:exam_app_meet/viewscreen/cartscreen.dart';
import 'package:exam_app_meet/viewscreen/detailscreen.dart';
import 'package:exam_app_meet/viewscreen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF181A20),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LAZA",
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Productscreen(),
        '/view': (context) => const Productview(index: 0,),
        '/addcart':(context) => const CartScreen(),
      },

    );
  }
}
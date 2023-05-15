import 'package:flutter/material.dart';
import 'package:food_app_ui/pages/item_page.dart';
import '';
import 'pages/cart_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Food App",
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xfff5f5f3),
      ),
      debugShowCheckedModeBanner: false,
      routes: {"/" :(context) => HomePage(),
      "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}


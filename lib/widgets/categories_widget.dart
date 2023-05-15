import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: Row(
          children: [
            SingleCategory(imagePath: "assets/drink.png"),
            SingleCategory(imagePath: "assets/burger.png"),
            SingleCategory(imagePath: "assets/pizza.png"),
            SingleCategory(imagePath: "assets/salan.png"),
            SingleCategory(imagePath: "assets/biryani.png"),

          ],
        ),
      ),
    );
  }
}

class SingleCategory extends StatelessWidget {
  SingleCategory({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Image.asset(imagePath,
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}

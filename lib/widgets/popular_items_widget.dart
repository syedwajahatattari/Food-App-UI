import 'package:flutter/material.dart';
import 'package:food_app_ui/pages/item_page.dart';

class PopularItemsWidget extends StatelessWidget {
  const PopularItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: Row(
        children: [
            SinglePopularItem(popularImagePath: "assets/burger.png", popularHeading: "Hot Burger", popularText: "Taste Our Hot Burger"),
            SinglePopularItem(popularImagePath: "assets/biryani.png", popularHeading: "Hot Biryani", popularText: "Taste Hot Biryani"),
            SinglePopularItem(popularImagePath: "assets/pizza.png", popularHeading: "Hot Pizza", popularText: "Taste Our Hot Pizza"),
            SinglePopularItem(popularImagePath: "assets/salan.png", popularHeading: "Chicken Salan", popularText: "Taste Chicken Salan"),
            SinglePopularItem(popularImagePath: "assets/drink.png", popularHeading: "Chill Drink", popularText: "Chill the Drink"),

        ],
      ),),
    );
  }
}


class SinglePopularItem extends StatelessWidget {
  SinglePopularItem({Key? key, required this.popularImagePath, required this.popularHeading, required this.popularText}) : super(key: key);
 final String popularImagePath, popularHeading, popularText;
  @override
  Widget build(BuildContext context) {
    return           Padding(padding: EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        width: 170,
        height: 225,
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
        child: Padding(padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.pushNamed(context, "itemPage"),
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(popularImagePath,
                    height: 120,
                  ),
                ),
              ),
              Text(
                popularHeading,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4,),
              Text(
                popularText,
                style: TextStyle(
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$10",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),),
                  Icon(Icons.favorite_border,
                    color: Colors.red,
                    size: 26,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

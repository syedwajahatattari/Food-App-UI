import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestItemsWidget extends StatelessWidget {
  const NewestItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            SingleNewestItem(
                newestImagePath: "assets/pizza.png",
                newestTitle: "Hot Pizza",
                newestDetail: "Taste Our Hot Pizza, We Provide Best Quality",
                itemInitialRating: 4),
            SingleNewestItem(
                newestImagePath: "assets/burger.png",
                newestTitle: "Hot Burger",
                newestDetail: "Taste Our Hot Burger, We Provide Best Quality",
                itemInitialRating: 4),
            SingleNewestItem(
                newestImagePath: "assets/biryani.png",
                newestTitle: "Spicy Biryani",
                newestDetail: "Taste Our Spicy Biryani, We Provide Best Quality",
                itemInitialRating: 4),
            SingleNewestItem(
                newestImagePath: "assets/salan.png",
                newestTitle: "Spicy Salan",
                newestDetail: "Taste Our Spicy Salan, We Provide Best Quality",
                itemInitialRating: 4),
            SingleNewestItem(
                newestImagePath: "assets/drink.png",
                newestTitle: "Chill Drink",
                newestDetail: "Feel the Chill Drink, We Provide Best Quality",
                itemInitialRating: 4),
          ],
        ),
      ),
    );
  }
}

class SingleNewestItem extends StatelessWidget {
  const SingleNewestItem(
      {Key? key,
      required this.newestImagePath,
      required this.newestTitle,
      required this.newestDetail,
      required this.itemInitialRating})
      : super(key: key);
  final String newestImagePath, newestTitle, newestDetail;
  final double itemInitialRating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Container(
        width: 380,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, "itemPage"),
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(newestImagePath, width: 125,),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      newestTitle,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      newestDetail,
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    RatingBar.builder(
                        initialRating: itemInitialRating,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 18,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                        onRatingUpdate: (index) {}),
                    Text(
                      "\$10",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.red,
                  ),
                  Icon(
                    CupertinoIcons.cart,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

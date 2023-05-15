import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            SingleCartItemWidget(
                newestImagePath: "assets/pizza.png",
                newestTitle: "Hot Pizza",
                newestDetail: "Taste Our Hot Pizza, We Provide Best Quality",
                ),
            SingleCartItemWidget(
                newestImagePath: "assets/burger.png",
                newestTitle: "Hot Burger",
                newestDetail: "Taste Our Hot Burger, We Provide Best Quality",
                ),
            SingleCartItemWidget(
                newestImagePath: "assets/biryani.png",
                newestTitle: "Spicy Biryani",
                newestDetail:
                    "Taste Our Spicy Biryani, We Provide Best Quality",
                ),
          ],
        ),
      ),
    );
  }
}

class SingleCartItemWidget extends StatelessWidget {
  const SingleCartItemWidget(
      {Key? key,
      required this.newestImagePath,
      required this.newestTitle,
      required this.newestDetail})
      : super(key: key);

  final String newestImagePath, newestTitle, newestDetail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    newestImagePath,
                    width: 125,
                  ),
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
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(CupertinoIcons.add, color: Colors.white,),
                    Text("2", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                    Icon(CupertinoIcons.minus, color: Colors.white,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

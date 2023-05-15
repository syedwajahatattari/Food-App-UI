import 'package:flutter/material.dart';
import 'package:food_app_ui/widgets/cart_bill_widget.dart';
import 'package:food_app_ui/widgets/cart_item_widget.dart';
import 'package:food_app_ui/widgets/custom_app_bar.dart';
import 'package:food_app_ui/widgets/drawer_widget.dart';
import 'package:food_app_ui/widgets/home_heading.dart';

import '../widgets/cart_bottom_navbar.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  HomeHeading(
                    homeheading: "Order List",
                  ),
                  CartItemWidget(),
                  CartBillWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      bottomNavigationBar: CartBottomNavbar(),
    );
  }
}

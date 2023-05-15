import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/widgets/floating_action_widget.dart';
import 'package:food_app_ui/widgets/searchBar.dart';
import '../widgets/categories_widget.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/home_heading.dart';
import '../widgets/newest_Items_widget.dart';
import '../widgets/popular_items_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //custom App bar widget
          CustomAppBar(),
          // Search
          SearchBar(),
          //Category
          HomeHeading(homeheading: "Categories"),
          //Categories Widget
          CategoriesWidget(),
          //Popular Items
          HomeHeading(homeheading: "Popular"),
          //Popular Items Widget
          PopularItemsWidget(),
          //Newwst Items
          HomeHeading(homeheading: "Newest"),
          //Newest Items Widget
          NewestItemsWidget(),
        ],
      ),
      drawer: DrawerWidget(),
      floatingActionButton: FloatingActionWidget(),
    );
  }
}

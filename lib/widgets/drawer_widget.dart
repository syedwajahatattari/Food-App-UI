import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              accountName: Text(
                "Syed Wajahat",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "syedwajahatattari@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/avatar.jpg"),
              ),
            ),
          ),
          SingleListTileItem(iconListTile: CupertinoIcons.home, titleListTile: "Home"),
          SingleListTileItem(iconListTile: CupertinoIcons.person, titleListTile: "My Account"),
          SingleListTileItem(iconListTile: CupertinoIcons.cart, titleListTile: "My Orders"),
          SingleListTileItem(iconListTile: CupertinoIcons.heart_fill, titleListTile: "My Wish List"),
          SingleListTileItem(iconListTile: CupertinoIcons.settings, titleListTile: "Settings"),
          SingleListTileItem(iconListTile: Icons.exit_to_app, titleListTile: "Log Out"),
        ],
      ),
    );
  }
}


class SingleListTileItem extends StatelessWidget {
  const SingleListTileItem({Key? key, required this.iconListTile, required this.titleListTile}) : super(key: key);
  final String titleListTile;
  final IconData iconListTile;
  @override
  Widget build(BuildContext context) {
    return           ListTile(
      leading: Icon(iconListTile as IconData?,
        color: Colors.red,
      ),
      title: Text(
        titleListTile,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

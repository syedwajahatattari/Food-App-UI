import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingActionWidget extends StatelessWidget {
  const FloatingActionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 3)
          ),
        ],
      ),
      child: FloatingActionButton(onPressed: () { Navigator.pushNamed(context, "cartPage"); },
        backgroundColor: Colors.white,
        child: Icon(CupertinoIcons.cart, color: Colors.red,),
      ),
    );
  }
}

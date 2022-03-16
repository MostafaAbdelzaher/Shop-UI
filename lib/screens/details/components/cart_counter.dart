import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounter createState() => _CartCounter();
}

class _CartCounter extends State<CartCounter> {
  int numOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutLinedBorder(
          press: () {
            setState(() {
              if (numOfItem > 1) {
                numOfItem--;
              }
            });
          },
          icon: Icons.remove,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            numOfItem.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutLinedBorder(
          press: () {
            setState(() {
              numOfItem++;
            });
          },
          icon: Icons.add,
        ),
      ],
    );
  }

  SizedBox buildOutLinedBorder(
      {required IconData icon, required Function press}) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
        ),
        onPressed: () {
          press();
        },
        child: Icon(icon),
      ),
    );
  }
}

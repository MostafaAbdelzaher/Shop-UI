import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../../models/products.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: [
          Container(
            child: IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/cart.svg',
                  color: product.color,
                ),
                onPressed: () {}),
            width: 58,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(
                  color: product.color!,
                ),
                borderRadius: BorderRadius.circular(18)),
            margin: const EdgeInsets.only(right: kDefaultPaddin),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: product.color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )),
                onPressed: () {},
                child: Text(
                  'Buy Now'.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

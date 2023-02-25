import 'package:flutter/material.dart';

import '../../../contents.dart';
import '../../../model/product_model.dart';
import 'package:auto_size_text/auto_size_text.dart';


class Products extends StatelessWidget {
  const Products({
    Key? key, required this.products, required this.press,
  }) : super(key: key);

  final Product products;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(kPadding /2),
      child: InkWell(
        onTap: press,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    products.image
                  ),
                ),
                SizedBox(height: 10),
                AutoSizeText(
                  products.title,
                  maxLines: 2, 
                  style: TextStyle(
                    fontSize: 15 ,
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
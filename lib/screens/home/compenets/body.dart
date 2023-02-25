import 'package:flutter/material.dart';

import '../../../contents.dart';
import '../../../model/product_model.dart';
import '../../../model/responsive.dart';
import 'email_banner.dart';
import 'products.dart';
import 'services_card.dart';


class BodyContainer extends StatelessWidget {
  const BodyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(kPadding),
      constraints: BoxConstraints(maxWidth: kMaxWidth),

      child: Column(
        children: [
          ServicesCard(),

          Responsive(
            desktop: ProductCard(
              crossAxissCount: _size.width < 650 ? 2 : 3,
              aspectRatio: _size.width < 650 ? 0.85 : 1.1,
            ),
            tablet: ProductCard(
              crossAxissCount: _size.width < 825 ? 2 : 3,
              aspectRatio: _size.width < 825 ? 0.85 : 1.1,
            ), 
            mobile: ProductCard(
              crossAxissCount: _size.width < 690 ? 2 : 3,
              aspectRatio: _size.width < 560 ? 0.85 : 1.1,
            ),
          ),

          SizedBox(height: 40,),

          EmailBanner(),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,  this.crossAxissCount = 3,  this.aspectRatio = 1.1,
  }) : super(key: key);

  final int crossAxissCount;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxissCount,
        childAspectRatio: aspectRatio
      ),
 
      itemBuilder: (context, index) => 
      Products(
        products: products[index],
        press: (){},
      ),
      itemCount: products.length,
    );
  }
}

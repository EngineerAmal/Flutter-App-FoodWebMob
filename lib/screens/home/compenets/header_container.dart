import 'package:flutter/material.dart';

import '../../../contents.dart';
import '../../../model/responsive.dart';
import 'banner_section.dart';
import 'header.dart';


class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: kPrimaryColor,
      height: 500,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(kPadding),
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              children: [
                Header(),

                SizedBox(height: 50,),

                BannerSection() 

              ],
            ),
          ),
        ],
      ),
    );
  }
}


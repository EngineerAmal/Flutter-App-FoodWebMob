import 'package:flutter/material.dart';

import '../../../contents.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../model/responsive.dart';
import 'menu.dart';



class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kPrimaryColor,
      child: Container(
        padding: EdgeInsets.all(kPadding),
        constraints: BoxConstraints(maxWidth: kMaxWidth),

        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Text("Foodie" ,
                        style: TextStyle(fontSize: 25.0 , fontWeight: FontWeight.w900 , color: kSconderyColor),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialIcon(
                            icon: "assets/icons/facebook-2.svg",
                          ),
                          SizedBox(width: 10,),
                          SocialIcon(
                            icon: "assets/icons/google-icon.svg",
                          ),
                          SizedBox(width: 10,),
                          SocialIcon(
                            icon: "assets/icons/twitter.svg",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                if(Responsive.isDesktop(context))
                Expanded(
                  flex: 3,
                  child: HeaderWebMenu(),
                )
              ],
            ),

            SizedBox(height: 20,),

            if(!Responsive.isDesktop(context)) MobFooterMenu()

          ],
        )
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key? key, required this.icon,
  }) : super(key: key);

  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.withOpacity(0.5))
      ),
      child: SvgPicture.asset(icon),
    );
  }
}

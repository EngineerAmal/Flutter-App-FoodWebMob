import 'package:flutter/material.dart';

import '../../../contents.dart';
import 'package:auto_size_text/auto_size_text.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: AboutSection(),
        ),

        SizedBox(width: 20,),
        
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Image.asset("assets/images/banner.png" , height: 350),
            ],
          ),
        )
      ],
    );
  }
}

class MobBanner extends StatefulWidget {
  @override
  _MobBannerState createState() => _MobBannerState();
}

class _MobBannerState extends State<MobBanner> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [        
        Column(
          children: [
            Image.asset(
              "assets/images/banner.png" ,
              width: 250,
              height: 250,
            ),
          ],
        ),

        SizedBox(height: 30,),

        AboutSection(),
      ],
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AutoSizeText(
          "Eat today" , 
          maxLines: 1,
          style: TextStyle(fontSize: 56 , fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10,),
        AutoSizeText(
          "Live another day" ,
          maxLines: 1, 
          style: TextStyle(fontSize: 56),
        ),
        SizedBox(height: 10,),

        Text(
          "Lorem ipsum dolor sit amet , consecteure adisoscung elit , set Lorem ipsum dolor sit amet , consecteure adisoscung elit , set",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black54
          ), 
        ),

        SizedBox(height: 20,),

        Container(
          padding: EdgeInsets.only(left: 10 , right: 10),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.withOpacity(0.3)),                               
          ),
          child: TextFormField(
            decoration:InputDecoration(
              suffixIcon: Icon(
                Icons.adjust_rounded,
                color: kSconderyColor,
              ),
              hintText: "Search Your favorite food",
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide.none
              ),  
              enabledBorder:  UnderlineInputBorder(
                borderSide: BorderSide.none
              ),  
            ) ,
          )
        ),

        SizedBox(height: 20,),

        Row(
          children: [
            Expanded(
              child: MaterialButton(
                height: 55,
                color: kSconderyColor,
                child: Text("Delivery" , style: TextStyle(color: Colors.white , fontSize: 16)),
                onPressed: (){},
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("or",
                 style: TextStyle(color: kSconderyColor , fontSize: 16 , fontWeight: FontWeight.w600),),
            ),

            Expanded(
              child: Container(
                height: 50,
                child: OutlinedButton(
                  child:  Text("Pick Up", style: TextStyle(color: kSconderyColor , fontSize: 16 , fontWeight: FontWeight.w600)),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: kSconderyColor)
                  ),
                  onPressed: (){},
                ),
              ),
            )
          ],
        )

      ],
    );
  }
}

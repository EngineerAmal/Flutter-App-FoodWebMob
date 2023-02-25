import 'package:flutter/material.dart';

import '../../contents.dart';
import 'compenets/body.dart';
import 'compenets/footer.dart';
import 'compenets/header_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'compenets/menu.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text("Foodie" ,
                 style: TextStyle(
                   fontSize: 25.0 , 
                   fontWeight: FontWeight.w900 , 
                   color: kSconderyColor),
                )
              ),
            ),
            MobMenu()
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(),

            BodyContainer(),

            SizedBox(height: 30,),

            Footer(),
          ]    
        ),
      ),
    );
  }
}

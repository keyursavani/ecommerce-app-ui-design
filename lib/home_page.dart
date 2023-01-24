import 'package:badges/badges.dart';
import 'package:ecommerce_app_ui_kite/product_page.dart';
import 'package:ecommerce_app_ui_kite/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'favorite_page.dart';
import 'nav_home_page.dart';
import 'notificationpage.dart';

class homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return homepagestate();
  }
}

class homepagestate extends State<homepage> {
  Color iconcolor = Colors.black;
  final double iconsize = 30;
  int pageIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    navehomepage(),
    favoritepage(),
    notificationpage(),
    profilepage(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: _widgetOptions[pageIndex],
      ),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0)),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ?  Icon(
                    Icons.home,
                    color: iconcolor,
                    size: iconsize,
                  )
                :  Icon(
                    Icons.home_outlined,
                    // color: Colors.black54,
                    size: iconsize,
                  ),
          ),
          // InkWell(
          //   enableFeedback: false,
          //   onTap: (){
          //     setState(() {
          //       pageIndex = 1;
          //     });
          //   },
          //   child: pageIndex == 1
          //       ? Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVi5jO7y5Xupm9rw7jq3LCO52eIu43Bepp20MfpC8-4c0PTLq_x1C7d5iA5XZxe1Hb1ds&usqp=CAU',
          //     height: 25, width: 25, )
          //   : Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmhxLrKJEtb466vtqjrK4jOL9qcrP-H_xZtQ&usqp=CAU' ,
          //     height: 25, width: 25),
          // ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ?  Icon(
                    Icons.bookmark,
                    color: iconcolor,
                    size: iconsize,
                  )
                :  Icon(
                    Icons.bookmark_border_outlined,
                    // color: Colors.black54,
                    size:iconsize,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ?  Badge(
              badgeContent: Text("", style: TextStyle(
                  color: Colors.white,
              ),
              ),
              animationDuration: Duration(microseconds: 300),
              child:  Icon(
                Icons.notifications,
                color: iconcolor,
                size: iconsize,
              )
            )
                : Icon(
                    Icons.notifications_none_outlined,
                    // color: Colors.black54,
                    size: iconsize,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ?  Icon(
                    Icons.person,
                    color: iconcolor,
                    size: iconsize,
                  )
                :  Icon(
                    Icons.person_outline_sharp,
                    // color: Colors.black54,
                    size: iconsize,
                  ),
          ),
        ],
      ),
    );
  }
}
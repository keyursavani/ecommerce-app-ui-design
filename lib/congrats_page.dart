import 'package:ecommerce_app_ui_kite/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_orders_page.dart';

class congratspage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return condratespagestate();
  }
}
class condratespagestate extends State<congratspage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 70, bottom: 20 ,left: 10 , right:  10),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Text("SUCCESS!" , style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              SizedBox(height: 40,),
              Container(
                alignment: Alignment.topCenter,
                child: Image(height:200,width: 200,fit: BoxFit.fill,
                    image: NetworkImage('https://www.easy-gst.in/wp-content/uploads/2017/07/success-icon-10-300x300.png')
                ),
              ),
              SizedBox(height: 40,),
              Container(
                alignment: Alignment.topCenter,
                child: Text("Your order will be delivered soon.\nThank you for choosing our app!" , style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54
                ),),
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.only(left: 10 ,right: 10),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context){
                          return orderspage();
                        })
                    );
                  },
                  child: Container(
                    // width: 230,
                    height: 55,
                    padding: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Track your orders",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(7.0))),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 10 ,right: 10),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context){
                          return homepage();
                        })
                    );
                  },
                  child: Container(
                    // width: 230,
                    height: 55,
                    padding: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Back to home",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(7.0))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
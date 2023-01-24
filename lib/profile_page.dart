import 'package:ecommerce_app_ui_kite/my_reviews_page.dart';
import 'package:ecommerce_app_ui_kite/paymentmethod_page.dart';
import 'package:ecommerce_app_ui_kite/setting_page.dart';
import 'package:ecommerce_app_ui_kite/shipping_address_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_orders_page.dart';

class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return profilepagestate();
  }
}
class profilepagestate extends State<profilepage>{

  Color shadowColor = Color(0x268A959E);

  TextStyle textStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  TextStyle textStyle2 = TextStyle(
      color: Colors.black54);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     body: SingleChildScrollView(
       child: Container(
         padding: const EdgeInsets.only(top: 50, bottom:30),
         child: Column(
           children: [
             Container(
               alignment: Alignment.topCenter,
               child: Text("Profile" , style: TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.bold,
               ),),
             ),
             Container(
               padding: const EdgeInsets.only(top: 20 , left: 15 ,right: 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       CircleAvatar(
                         radius: 42,
                         backgroundColor: Colors.white,
                         backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnXSeAOPCPKS-ZRcHdRzxR6Px_aTpUlykplg&usqp=CAU'),
                       ),
                       SizedBox(width: 16,),
                       Column(
                         children: [
                           Text("Kristin Watson" ,style: textStyle),
                           SizedBox(height: 7,),
                           Text("bruno203@gmail.com" , style: textStyle2,
                           ),
                         ],
                       )
                     ],
                   ),
                 ],
               ),
             ),
             Container(
               padding: const EdgeInsets.only(top: 25 ,left: 15,right: 15),
               child: InkWell(
                 onTap: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context){
                       return orderspage();
                     })
                 );},
                 child: Card(
                   elevation:8,
                   borderOnForeground: true,
                   shadowColor: shadowColor,
                   child: Container(
                     padding: const EdgeInsets.only(top: 15 ,left: 20, bottom: 15),
                     child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("My Orders" , style: textStyle),
                                 SizedBox(height: 10,),
                                 Text("Already have 10 orders" , style: textStyle2),
                               ],
                             ),
                             IconButton(
                                 onPressed: (){
                                   Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context){
                                         return orderspage();
                                       })
                                   );
                                 },
                                 icon: Icon(Icons.navigate_next_sharp),
                             ),
                           ],
                         )
                   ),
                 ),
               ),
             ),
             Container(
               padding: const EdgeInsets.only(top: 10 ,left: 15,right: 15),
               child: InkWell(
                 onTap: (){
                   Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context){
                         return shippingaddresspage();
                       })
                   );
                 },
                 child: Card(
                   elevation:8,
                   borderOnForeground: true,
                   shadowColor: shadowColor,
                   child: Container(
                       padding: const EdgeInsets.only(top: 15 ,left: 20 , bottom: 15),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Shipping Addresses" , style: textStyle),
                               SizedBox(height: 10,),
                               Text("03 Adresses" , style: textStyle2,),
                             ],
                           ),
                           IconButton(
                             onPressed: (){Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context){
                                   return shippingaddresspage();
                                 })
                             );
                               },
                             icon: Icon(Icons.navigate_next_sharp),
                           ),
                         ],
                       )
                   ),
                 ),
               ),
             ),
             Container(
               padding: const EdgeInsets.only(top: 10 ,left: 15,right: 15),
               child: InkWell(
                 onTap: (){
                   Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context){
                         return paymentmethodpage();
                       })
                   );
                 },
                 child: Card(
                   elevation:8,
                   borderOnForeground: true,
                   shadowColor:shadowColor,
                   child: Container(
                       padding: const EdgeInsets.only(top: 15 ,left: 20 , bottom: 15),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Payment Method" , style: textStyle,),
                               SizedBox(height: 10,),
                               Text("You have 2 cards" , style: textStyle2,),
                             ],
                           ),
                           IconButton(
                             onPressed: (){
                               Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context){
                                     return paymentmethodpage();
                                   })
                               );
                             },
                             icon: Icon(Icons.navigate_next_sharp),
                           ),
                         ],
                       )
                   ),
                 ),
               ),
             ),
             Container(
               padding: const EdgeInsets.only(top: 10 ,left: 15,right: 15),
               child: InkWell(
                 onTap: (){
                   Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context){
                         return myreviewspage();
                       })
                   );
                 },
                 child: Card(
                   elevation:8,
                   borderOnForeground: true,
                   shadowColor: shadowColor,
                   child: Container(
                       padding: const EdgeInsets.only(top: 15 ,left: 20 , bottom: 15),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("My reviews" , style: textStyle),
                               SizedBox(height: 10,),
                               Text("Reviews for 5 items" , style: textStyle2),
                             ],
                           ),
                           IconButton(
                             onPressed: (){
                               Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context){
                                     return myreviewspage();
                                   })
                               );
                             },
                             icon: Icon(Icons.navigate_next_sharp),
                           ),
                         ],
                       )
                   ),
                 ),
               ),
             ),
             Container(
               padding: const EdgeInsets.only(top: 10 ,left: 15,right: 15),
               child: InkWell(
                 onTap: (){
                   Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context){
                         return settingpage();
                       })
                   );
                 },
                 child: Card(
                   elevation:8,
                   borderOnForeground: true,
                   shadowColor: shadowColor,
                   child: Container(
                       padding: const EdgeInsets.only(top: 15 ,left: 20 , bottom: 15),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Setting" , style: textStyle,),
                               SizedBox(height: 10,),
                               Text("Notification, Password, FAQ, Contact" , style: textStyle2,),
                             ],
                           ),
                           IconButton(
                             onPressed: (){
                               Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context){
                                     return settingpage();
                                   })
                               );
                             },
                             icon: Icon(Icons.navigate_next_sharp),
                           ),
                         ],
                       ),
                   ),
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
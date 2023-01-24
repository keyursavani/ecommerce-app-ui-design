import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_orders_page.dart';

class notificationpage extends StatefulWidget{
  const notificationpage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return notificationpagestate();
  }
}
class notificationpagestate extends State<notificationpage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(
          padding: const EdgeInsets.only(top: 50, bottom: 15),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Text("Notification" , style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10 , left: 10 ,right: 10 ,bottom: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return orderspage();
                            })
                        );
                      },
                      child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image(height: 90, width: 90,fit: BoxFit.fill,
                                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMH-gR0AXJXAQ_SmYvc_cQj0_ELFDs06ATgA&usqp=CAU')),
                                      ),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text('Your order #123456789 has been shipped successfully', style: TextStyle(
                                            fontWeight:FontWeight.bold,
                                          ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text( 'Lerem ipsum dolor sit amet, consectetur adipiscing elit.', style: TextStyle(
                                            color:Colors.black54,
                                          ),
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            child: Text("New" , style: TextStyle(
                                                color: Colors.green
                                            ),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8 ,right:8 ,top: 25 ,bottom: 15 ),
                      child: Image.asset('assets/images/Devider.png' ,color: Colors.black26 ,fit:BoxFit.fill, width: 10000,height: 1.0,),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return orderspage();
                            })
                        );
                      },
                      child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image(height: 90, width: 90,fit: BoxFit.fill,
                                          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBc_ZfQW09kg9Xaf-hojxzVlpTGYPaZtTu4Ns1iQsCf1DNLnC4d3FH5IAhVEYHqPdB2WQ&usqp=CAU')),
                                    ),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text('Your order #123456789 has been shipped successfully', style: TextStyle(
                                            fontWeight:FontWeight.bold,
                                          ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text( 'Lerem ipsum dolor sit amet, consectetur adipiscing elit.', style: TextStyle(
                                            color:Colors.black54,
                                          ),
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            child: Text("New" , style: TextStyle(
                                                color: Colors.green
                                            ),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8 ,right:8 ,top: 25 ,bottom: 15  ),
                      child: Image.asset('assets/images/Devider.png' ,color: Colors.black26 ,fit:BoxFit.fill, width: 10000,height: 1.0,),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return orderspage();
                            })
                        );
                      },
                      child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image(height: 90, width: 90,fit: BoxFit.fill,
                                          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJOf-rk_2IWwbbYQODmkawueqqiZpCdzNhYQ&usqp=CAU')),
                                    ),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text('Your order #123456789 has been shipped successfully', style: TextStyle(
                                            fontWeight:FontWeight.bold,
                                          ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text( 'Lerem ipsum dolor sit amet, consectetur adipiscing elit.', style: TextStyle(
                                            color:Colors.black54,
                                          ),
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            child: Text("Hot" , style: TextStyle(
                                                color: Colors.red
                                            ),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8 ,right:8 ,top: 25 ,bottom: 15  ),
                      child: Image.asset('assets/images/Devider.png' ,color: Colors.black26 ,fit:BoxFit.fill, width: 10000,height: 1.0,),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return orderspage();
                            })
                        );
                      },
                      child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image(height: 90, width: 90,fit: BoxFit.fill,
                                          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQzvtFF1OnztRZx1aiWtImGbAXRCK29CpJew&usqp=CAU')),
                                    ),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text('Your order #123456789 has been shipped successfully', style: TextStyle(
                                            fontWeight:FontWeight.bold,
                                          ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text( 'Lerem ipsum dolor sit amet, consectetur adipiscing elit.', style: TextStyle(
                                            color:Colors.black54,
                                          ),
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            child: Text("Hot" , style: TextStyle(
                                                color: Colors.red
                                            ),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8 ,right:8 ,top: 25 ,bottom: 15  ),
                      child: Image.asset('assets/images/Devider.png' ,color: Colors.black26 ,fit:BoxFit.fill, width: 10000,height: 1.0,),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return orderspage();
                            })
                        );
                      },
                      child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image(height: 90, width: 90,fit: BoxFit.fill,
                                          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9Sy0LbHLryXgcJkXJFPd0gPXS4PSNnDLiLA&usqp=CAU')),
                                    ),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text('Your order #123456789 has been shipped successfully', style: TextStyle(
                                            fontWeight:FontWeight.bold,
                                          ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text( 'Lerem ipsum dolor sit amet, consectetur adipiscing elit.', style: TextStyle(
                                            color:Colors.black54,
                                          ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(top: 70),
                                    //   child: Align(
                                    //     alignment: Alignment.bottomLeft,
                                    //     child: Center(
                                    //       child: Text("New" , style: TextStyle(
                                    //           color: Colors.green
                                    //       ),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 8 ,right:8 ,top: 25 ,bottom: 15 ),
                    //   child: Image.asset('assets/images/Devider.png' ,color: Colors.black26 ,fit:BoxFit.cover,),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
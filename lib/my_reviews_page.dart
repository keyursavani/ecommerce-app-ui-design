import 'package:ecommerce_app_ui_kite/product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myreviewspage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myreviewspagestate();
  }
}
class myreviewspagestate extends State<myreviewspage>{
  List<String> productname = [
    'Black Simple Lamp',
    'Minimal Stand',
    'Coffee Chair',
    'Simple Desk',
    'Black Simple Lamp',
    'Black Simple Lamp',
  ];
  List<String> productprice = [
    '\$ 12.00',
    '\$ 25.00',
    '\$ 12.00',
    '\$ 12.00',
    '\$ 12.00',
    '\$ 12.00',
  ];

  List<String> productimage = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMH-gR0AXJXAQ_SmYvc_cQj0_ELFDs06ATgA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBc_ZfQW09kg9Xaf-hojxzVlpTGYPaZtTu4Ns1iQsCf1DNLnC4d3FH5IAhVEYHqPdB2WQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJOf-rk_2IWwbbYQODmkawueqqiZpCdzNhYQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv5J-FIMci1BM2PiLL_0ymD2borhyDLiO2wQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQzvtFF1OnztRZx1aiWtImGbAXRCK29CpJew&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9Sy0LbHLryXgcJkXJFPd0gPXS4PSNnDLiLA&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     body: Container(
         padding: const EdgeInsets.only(top: 40 ,bottom: 20),
         child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Align(
                   alignment: Alignment.topRight,
                   child: IconButton(
                     onPressed: () {
                       Navigator.pop(context);
                     },
                     icon: Icon(
                       Icons.arrow_back_ios_sharp,
                       color: Colors.black,
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 0,
                 ),
                 Text(
                   "My reviews",
                   style: TextStyle(
                       color: Colors.black,
                       fontSize: 20,
                       fontWeight: FontWeight.bold),
                 ),
                 SizedBox(
                   width: 50,
                 ),
                 Text(
                   "",
                   style: TextStyle(
                       color: Colors.black,
                       fontSize: 19,
                       fontWeight: FontWeight.bold),
                 ),
               ],
             ),
             Expanded(
               child: ListView.builder(
                 itemCount: productimage.length,
                   shrinkWrap: true,
                   itemBuilder:(context , index){
                     final image = productimage[index].toString();
                     final name = productname[index].toString();
                     final price = productprice[index].toString();
                     return Container(
                       padding: const EdgeInsets.only(top: 15 ,left: 13 ,right: 13 ),
                       child: Card(
                         elevation:8,
                         borderOnForeground: true,
                         shadowColor: Color(0x268A959E),
                         child: Container(
                           padding: const EdgeInsets.only(top: 15 ,right: 15 , left: 15 ,bottom: 15),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   InkWell(
                                     onTap:(){
                                       Navigator.push(
                                           context,
                                           MaterialPageRoute(builder: (context){
                                             return productpage(
                                                 image : image , name: name , price: price
                                             );
                                           })
                                       );
                                     },
                                     child: ClipRRect(
                                       borderRadius: BorderRadius.circular(10),
                                       child: Image(height: 90, width: 90,fit: BoxFit.fill,
                                           image: NetworkImage(productimage[index].toString())),
                                     ),
                                   ),
                                   SizedBox(width: 20,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text(productname[index].toString(), style: TextStyle(
                                           fontSize: 18,
                                           color: Colors.black
                                       ),),
                                       SizedBox(height: 10,),
                                       Text(productprice[index].toString() ,style: TextStyle(
                                           fontSize: 22,
                                           fontWeight: FontWeight.w500
                                       ),)
                                     ],
                                   )
                                 ],
                               ),
                               SizedBox(height: 15,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Row(
                                     children: [
                                       Icon(Icons.star , color: Colors.yellow,),
                                       Icon(Icons.star , color: Colors.yellow,),
                                       Icon(Icons.star , color: Colors.yellow,),
                                       Icon(Icons.star , color: Colors.yellow,),
                                       Icon(Icons.star , color: Colors.yellow,),
                                     ],
                                   ),
                                   Text("20/03/2020" , style: TextStyle(
                                       color: Colors.black54
                                   ),)
                                 ],
                               ),
                               SizedBox(height: 20,),
                               Text("Nice Furniture with good delivery. The delivery time is very fast. "
                                   "Then products look like exactly the picture in the app. Besides, color "
                                   "is also the same and quality is very good despite very cheap price" ,
                                 style: TextStyle(
                                   color: Colors.black54,
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     );
                   }
               ),
             ),
             // Container(
             //   padding: const EdgeInsets.only(top: 15 ,left: 13 ,right: 13 ),
             //   child: Card(
             //     elevation: 15,
             //     borderOnForeground: true,
             //     shadowColor: Colors.black,
             //     child: Container(
             //       padding: const EdgeInsets.only(top: 15 ,right: 15 , left: 15 ,bottom: 15),
             //       child: Column(
             //         crossAxisAlignment: CrossAxisAlignment.start,
             //         mainAxisAlignment: MainAxisAlignment.start,
             //         children: [
             //           Row(
             //             children: [
             //               InkWell(
             //                 onTap:(){
             //                   Navigator.push(
             //                       context,
             //                       MaterialPageRoute(builder: (context){
             //                         return productpage();
             //                       })
             //                   );
             //                 },
             //                 child: ClipRRect(
             //                   borderRadius: BorderRadius.circular(10),
             //                   child: Image(height: 90, width: 90,fit: BoxFit.fill,
             //                       image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMH-gR0AXJXAQ_SmYvc_cQj0_ELFDs06ATgA&usqp=CAU')),
             //                 ),
             //               ),
             //               SizedBox(width: 20,),
             //               Column(
             //                 crossAxisAlignment: CrossAxisAlignment.start,
             //                 children: [
             //                   Text("Coffee Table", style: TextStyle(
             //                       fontSize: 18,
             //                       color: Colors.black
             //                   ),),
             //                   SizedBox(height: 10,),
             //                   Text("\$ 50.00" ,style: TextStyle(
             //                       fontSize: 22,
             //                       fontWeight: FontWeight.w500
             //                   ),)
             //                 ],
             //               )
             //             ],
             //           ),
             //           SizedBox(height: 15,),
             //           Row(
             //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             //             children: [
             //               Row(
             //                 children: [
             //                   Icon(Icons.star , color: Colors.yellow,),
             //                   Icon(Icons.star , color: Colors.yellow,),
             //                   Icon(Icons.star , color: Colors.yellow,),
             //                   Icon(Icons.star , color: Colors.yellow,),
             //                   Icon(Icons.star , color: Colors.yellow,),
             //                 ],
             //               ),
             //               Text("20/03/2020" , style: TextStyle(
             //                   color: Colors.black54
             //               ),)
             //             ],
             //           ),
             //           SizedBox(height: 20,),
             //           Text("Nice Furniture with good delivery. The delivery time is very fast. "
             //               "Then products look like exactly the picture in the app. Besides, color "
             //               "is also the same and quality is very good despite very cheap price" ,
             //             style: TextStyle(
             //               color: Colors.black54,
             //             ),
             //           ),
             //         ],
             //       ),
             //     ),
             //   ),
             // ),
             // Container(
             //   padding: const EdgeInsets.only(top: 15 ,left: 13 ,right: 13 ),
             //   child: Card(
             //     elevation: 15,
             //     borderOnForeground: true,
             //     shadowColor: Colors.black,
             //     child: Container(
             //       padding: const EdgeInsets.only(top: 15 ,right: 15 , left: 15 ,bottom: 15),
             //       child: Column(
             //         crossAxisAlignment: CrossAxisAlignment.start,
             //         mainAxisAlignment: MainAxisAlignment.start,
             //         children: [
             //           Row(
             //             children: [
             //               InkWell(
             //                 onTap:(){
             //                   Navigator.push(
             //                       context,
             //                       MaterialPageRoute(builder: (context){
             //                         return productpage();
             //                       })
             //                   );
             //                 },
             //                 child: ClipRRect(
             //                   borderRadius: BorderRadius.circular(10),
             //                   child: Image(height: 90, width: 90,fit: BoxFit.fill,
             //                       image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBc_ZfQW09kg9Xaf-hojxzVlpTGYPaZtTu4Ns1iQsCf1DNLnC4d3FH5IAhVEYHqPdB2WQ&usqp=CAU')),
             //                 ),
             //               ),
             //               SizedBox(width: 20,),
             //               Column(
             //                 crossAxisAlignment: CrossAxisAlignment.start,
             //                 children: [
             //                   Text("Coffee Table", style: TextStyle(
             //                       fontSize: 18,
             //                       color: Colors.black
             //                   ),),
             //                   SizedBox(height: 10,),
             //                   Text("\$ 50.00" ,style: TextStyle(
             //                       fontSize: 22,
             //                       fontWeight: FontWeight.w500
             //                   ),)
             //                 ],
             //               )
             //             ],
             //           ),
             //           SizedBox(height: 15,),
             //           Row(
             //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             //             children: [
             //               Row(
             //                 children: [
             //                   Icon(Icons.star , color: Colors.yellow,),
             //                   Icon(Icons.star , color: Colors.yellow,),
             //                   Icon(Icons.star , color: Colors.yellow,),
             //                   Icon(Icons.star , color: Colors.yellow,),
             //                   Icon(Icons.star , color: Colors.yellow,),
             //                 ],
             //               ),
             //               Text("20/03/2020" , style: TextStyle(
             //                   color: Colors.black54
             //               ),)
             //             ],
             //           ),
             //           SizedBox(height: 20,),
             //           Text("Nice Furniture with good delivery. The delivery time is very fast. "
             //               "Then products look like exactly the picture in the app. Besides, color "
             //               "is also the same and quality is very good despite very cheap price" ,
             //             style: TextStyle(
             //               color: Colors.black54,
             //             ),
             //           ),
             //         ],
             //       ),
             //     ),
             //   ),
             // ),
             // Container(
             //   padding: const EdgeInsets.only(top: 15 ,left: 13 ,right: 13 ),
             //   child: Card(
             //     elevation: 15,
             //     borderOnForeground: true,
             //     shadowColor: Colors.black,
             //     child: Container(
             //       padding: const EdgeInsets.only(top: 15 ,right: 15 , left: 15 ,bottom: 15),
             //       child: Column(
             //         crossAxisAlignment: CrossAxisAlignment.start,
             //         mainAxisAlignment: MainAxisAlignment.start,
             //         children: [
             //           Row(
             //             children: [
             //               InkWell(
             //                 onTap:(){
             //                   Navigator.push(
             //                       context,
             //                       MaterialPageRoute(builder: (context){
             //                         return productpage();
             //                       })
             //                   );
             //                 },
             //                 child: ClipRRect(
             //                   borderRadius: BorderRadius.circular(10),
             //                   child: Image(height: 90, width: 90,fit: BoxFit.fill,
             //                       image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJOf-rk_2IWwbbYQODmkawueqqiZpCdzNhYQ&usqp=CAU')),
             //                 ),
             //               ),
             //               SizedBox(width: 20,),
             //               Column(
             //                 crossAxisAlignment: CrossAxisAlignment.start,
             //                 children: [
             //                   Text("Coffee Table", style: TextStyle(
             //                       fontSize: 18,
             //                       color: Colors.black
             //                   ),),
             //                   SizedBox(height: 10,),
             //                   Text("\$ 50.00" ,style: TextStyle(
             //                       fontSize: 22,
             //                       fontWeight: FontWeight.w500
             //                   ),)
             //                 ],
             //               )
             //             ],
             //           ),
             //           SizedBox(height: 15,),
             //           Row(
             //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             //             children: [
             //               Row(
             //                 children: [
             //                   Icon(Icons.star , color: Colors.yellow,),
             //                   Icon(Icons.star , color: Colors.yellow,),
             //                   Icon(Icons.star , color: Colors.yellow,),
             //                   Icon(Icons.star , color: Colors.yellow,),
             //                   Icon(Icons.star , color: Colors.yellow,),
             //                 ],
             //               ),
             //               Text("20/03/2020" , style: TextStyle(
             //                   color: Colors.black54
             //               ),)
             //             ],
             //           ),
             //           SizedBox(height: 20,),
             //           Text("Nice Furniture with good delivery. The delivery time is very fast. "
             //               "Then products look like exactly the picture in the app. Besides, color "
             //               "is also the same and quality is very good despite very cheap price" ,
             //             style: TextStyle(
             //               color: Colors.black54,
             //             ),
             //           ),
             //         ],
             //       ),
             //     ),
             //   ),
             // ),
           ],
         ),
       ),
   );
  }
}
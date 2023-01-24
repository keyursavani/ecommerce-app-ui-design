import 'package:ecommerce_app_ui_kite/my_cart_page.dart';
import 'package:ecommerce_app_ui_kite/product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class navehomepage extends StatefulWidget {
  const navehomepage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return navehomepagestate();
  }
}

class navehomepagestate extends State<navehomepage> {
  int tabindex = 0;
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

  final double height = 47;
  final double width = 47;
  final double size = 25;
  Color black = Colors.black;
  Color   white =  Colors.white;
  Color  black54 = Colors.black54;
  Color  black12 = Colors.black12;

  double fontsize =  13;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        padding:
            const EdgeInsets.only(top: 40, left: 10, right: 12, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "MAKE HOME",
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "BEAUTIFUL",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 19,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return mycartpage();
                    }));
                  },
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(left: 8, right: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height:height,
                        width:width,
                        child: IconButton(
                          icon: tabindex == 0
                              ? Icon(
                                  Icons.star,
                                  color: white,
                                  size: size,
                                )
                              : Icon(
                                  Icons.star_outline,
                                  color: black54,
                                  size: size,
                                ),
                          onPressed: () {
                            setState(() {
                              tabindex = 0;
                            });
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context){
                            //       return popularpage();
                            //     })
                            // );
                          },
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: tabindex == 0 ? black : black12,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Popular",
                        style: TextStyle(
                          fontSize: fontsize,
                          color: tabindex == 0 ? black : black54,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: height,
                        width: width,
                        child: IconButton(
                          icon: tabindex == 1
                              ? Icon(Icons.chair_rounded,
                                  color: white,
                              size: size
                          )
                              : Icon(Icons.chair_outlined,
                                  color: black54,
                              size: size),
                          onPressed: () {
                            setState(() {
                              tabindex = 1;
                            });
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context){
                            //       return chairpage();
                            //     })
                            // );
                          },
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: tabindex == 1 ? black : black12,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Chair",
                        style: TextStyle(
                          fontSize: fontsize,
                          color: tabindex == 1 ? black : black54,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: height,
                        width: width,
                        child: IconButton(
                          icon: tabindex == 2
                              ? Icon(Icons.table_restaurant,
                                  color: white, size: size)
                              : Icon(Icons.table_restaurant_outlined,
                                  color: black54, size: size),
                          onPressed: () {
                            setState(() {
                              tabindex = 2;
                            });
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context){
                            //       return tabelpage();
                            //     })
                            // );
                          },
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: tabindex == 2 ? black : black12,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Table",
                        style: TextStyle(
                          fontSize:fontsize,
                          color: tabindex == 2 ? black : black54,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height:height,
                        width: width,
                        child: IconButton(
                          icon: tabindex == 3
                              ? Icon(Icons.chair, color:white, size: size)
                              : Icon(Icons.chair,
                                  color:black54, size: size),
                          onPressed: () {
                            setState(() {
                              tabindex = 3;
                            });
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context){
                            //       return armchairpage();
                            //     })
                            // );
                          },
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: tabindex == 3 ? black : black12,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "ArmChair",
                        style: TextStyle(
                          fontSize: fontsize,
                          color: tabindex == 3 ? black : black54,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: height,
                        width: width,
                        child: IconButton(
                          icon: tabindex == 4
                              ? Icon(Icons.bed, color: white, size: size)
                              : Icon(Icons.bed_outlined,
                                  color: black54, size: size),
                          onPressed: () {
                            setState(() {
                              tabindex = 4;
                            });
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context){
                            //       return bedpage();
                            //     })
                            // );
                          },
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: tabindex == 4 ? black : black12,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Bed",
                        style: TextStyle(
                          fontSize: fontsize,
                          color: tabindex == 4 ? black : black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 3.8,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: productimage.length,
                    itemBuilder: (BuildContext context, int index) {
                      final image = productimage[index].toString();
                      final name = productname[index].toString();
                      final price = productprice[index].toString();
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return productpage(
                                        image : image , name: name , price: price
                                    );
                                  }));
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    height: 225,
                                    fit: BoxFit.fill,
                                    image: NetworkImage(productimage[index].toString()),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 12.0,
                                right: 12,
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return mycartpage();
                                          }));
                                        },
                                        icon: Icon(Icons.shopping_bag)),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    color: Colors.black12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 11),
                          Text(
                      productname[index].toString(),
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            productprice[index].toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      );
                    }),
                // children: [
                //   Container(
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Stack(
                //           children: [
                //             InkWell(
                //               onTap: (){
                //                 Navigator.push(
                //                     context,
                //                     MaterialPageRoute(builder: (context){
                //                       return productpage();
                //                     })
                //                 );
                //               },
                //               child: ClipRRect(
                //                 borderRadius: BorderRadius.circular(10),
                //                 child: Image(height: 225,fit: BoxFit.fill,
                //                   image: NetworkImage(
                //                       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMH-gR0AXJXAQ_SmYvc_cQj0_ELFDs06ATgA&usqp=CAU'),
                //                 ),
                //               ),
                //             ),
                //             Positioned(
                //               bottom:12.0,
                //               right: 12,
                //               child: Container(
                //                 height: 40,
                //                 width: 40,
                //                 child: Align(
                //                   alignment: Alignment.center,
                //                   child: IconButton(
                //                       onPressed: () {
                //                           Navigator.push(
                //                               context,
                //                               MaterialPageRoute(builder: (context){
                //                                 return mycartpage();
                //                               })
                //                           );
                //                       },
                //                       icon: Icon(Icons.shopping_bag)),
                //                 ),
                //                 decoration: BoxDecoration(
                //                   borderRadius:
                //                   BorderRadius.all(Radius.circular(6)),
                //                   color: Colors.black12,
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //         SizedBox(height: 11),
                //         Text("Black Simple Lamp" ,style: TextStyle(
                //             fontSize: 16,
                //             color: Colors.black54
                //         ),),
                //         SizedBox(
                //           height: 8,
                //         ),
                //         Text("\$ 12.00" , style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 17,
                //         ),),
                //       ],
                //     ),
                //   ),
                //   Container(
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Stack(
                //           children: [
                //             ClipRRect(
                //               borderRadius: BorderRadius.circular(10),
                //               child: Image(height: 225 ,fit: BoxFit.fill,
                //                 image: NetworkImage(
                //                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBc_ZfQW09kg9Xaf-hojxzVlpTGYPaZtTu4Ns1iQsCf1DNLnC4d3FH5IAhVEYHqPdB2WQ&usqp=CAU'),
                //               ),
                //             ),
                //             Positioned(
                //               bottom: 12,
                //               right: 12,
                //               child: Container(
                //                 height: 40,
                //                 width: 40,
                //                 child: Align(
                //                   alignment: Alignment.center,
                //                   child: IconButton(
                //                       onPressed: () {},
                //                       icon: Icon(Icons.shopping_bag)),
                //                 ),
                //                 decoration: BoxDecoration(
                //                   borderRadius:
                //                   BorderRadius.all(Radius.circular(6)),
                //                   color: Colors.black12,
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //         SizedBox(height: 11),
                //         Text("Minimal Stand" ,style: TextStyle(
                //             fontSize: 16,
                //             color: Colors.black54
                //         ),),
                //         SizedBox(
                //           height: 8,
                //         ),
                //         Text("\$ 25.00" , style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 17,
                //         ),),
                //       ],
                //     ),
                //   ),
                //   Container(
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Stack(
                //           children: [
                //             ClipRRect(
                //               borderRadius: BorderRadius.circular(10),
                //               child: Image(height: 225 , fit: BoxFit.fill,
                //                 image: NetworkImage(
                //                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJOf-rk_2IWwbbYQODmkawueqqiZpCdzNhYQ&usqp=CAU'),
                //               ),
                //             ),
                //             Positioned(
                //               bottom: 12,
                //               right: 12,
                //               child: Container(
                //                 height: 40,
                //                 width: 40,
                //                 child: Align(
                //                   alignment: Alignment.center,
                //                   child: IconButton(
                //                       onPressed: () {},
                //                       icon: Icon(Icons.shopping_bag)),
                //                 ),
                //                 decoration: BoxDecoration(
                //                   borderRadius:
                //                   BorderRadius.all(Radius.circular(6)),
                //                   color: Colors.black12,
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //         SizedBox(height: 11),
                //         Text("Coffee Chair" ,style: TextStyle(
                //             fontSize: 16,
                //             color: Colors.black54
                //         ),),
                //         SizedBox(
                //           height: 8,
                //         ),
                //         Text("\$ 12.00" , style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 17,
                //         ),),
                //       ],
                //     ),
                //   ),
                //   Container(
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Stack(
                //           children: [
                //             ClipRRect(
                //               borderRadius: BorderRadius.circular(10),
                //               child: Image(height: 225, fit: BoxFit.fill,
                //                 image: NetworkImage(
                //                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv5J-FIMci1BM2PiLL_0ymD2borhyDLiO2wQ&usqp=CAU'),
                //               ),
                //             ),
                //             Positioned(
                //               bottom: 12,
                //               right: 12,
                //               child: Container(
                //                 height: 40,
                //                 width: 40,
                //                 child: Align(
                //                   alignment: Alignment.center,
                //                   child: IconButton(
                //                       onPressed: () {},
                //                       icon: Icon(Icons.shopping_bag)),
                //                 ),
                //                 decoration: BoxDecoration(
                //                   borderRadius:
                //                   BorderRadius.all(Radius.circular(6)),
                //                   color: Colors.black12,
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //         SizedBox(height: 11),
                //         Text("Simple Desk" ,style: TextStyle(
                //             fontSize: 16,
                //             color: Colors.black54
                //         ),),
                //         SizedBox(
                //           height: 8,
                //         ),
                //         Text("\$ 12.00" , style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 17,
                //         ),),
                //       ],
                //     ),
                //   ),
                //   Container(
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Stack(
                //           children: [
                //             ClipRRect(
                //               borderRadius: BorderRadius.circular(10),
                //               child: Image(height: 225 , fit: BoxFit.fill,
                //                 image: NetworkImage(
                //                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQzvtFF1OnztRZx1aiWtImGbAXRCK29CpJew&usqp=CAU'),
                //               ),
                //             ),
                //             Positioned(
                //               bottom: 12,
                //               right: 12,
                //               child: Container(
                //                 height: 40,
                //                 width: 40,
                //                 child: Align(
                //                   alignment: Alignment.center,
                //                   child: IconButton(
                //                       onPressed: () {},
                //                       icon: Icon(Icons.shopping_bag)),
                //                 ),
                //                 decoration: BoxDecoration(
                //                   borderRadius:
                //                   BorderRadius.all(Radius.circular(6)),
                //                   color: Colors.black12,
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //         SizedBox(height: 11),
                //         Text("Black Simple Lamp" ,style: TextStyle(
                //             fontSize: 16,
                //             color: Colors.black54
                //         ),),
                //         SizedBox(
                //           height: 8,
                //         ),
                //         Text("\$ 12.00" , style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 17,
                //         ),),
                //       ],
                //     ),
                //   ),
                //   Container(
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Stack(
                //           children: [
                //             ClipRRect(
                //               borderRadius: BorderRadius.circular(10),
                //               child: Image(height: 225 ,fit: BoxFit.fill,
                //                 image: NetworkImage(
                //                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9Sy0LbHLryXgcJkXJFPd0gPXS4PSNnDLiLA&usqp=CAU'),
                //               ),
                //             ),
                //             Positioned(
                //               bottom: 12,
                //               right: 12,
                //               child: Container(
                //                 height: 40,
                //                 width: 40,
                //                 child: Align(
                //                   alignment: Alignment.center,
                //                   child: IconButton(
                //                       onPressed: () {},
                //                       icon: Icon(Icons.shopping_bag)),
                //                 ),
                //                 decoration: BoxDecoration(
                //                   borderRadius:
                //                   BorderRadius.all(Radius.circular(6)),
                //                   color: Colors.black12,
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //         SizedBox(height: 11),
                //         Text("Black Simple Lamp" ,style: TextStyle(
                //             fontSize: 16,
                //             color: Colors.black54
                //         ),),
                //         SizedBox(
                //           height: 8,
                //         ),
                //         Text("\$ 12.00" , style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 17,
                //         ),),
                //       ],
                //     ),
                //   ),
                // ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce_app_ui_kite/favorite_page.dart';
import 'package:ecommerce_app_ui_kite/product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'check_Out_page.dart';
import 'home_page.dart';

class mycartpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return mycartpagestate();
  }
}

class mycartpagestate extends State<mycartpage> {
  List<String> productname = [
    'Minimal Stand',
    'Minimal Stand',
    'Minimal Stand',
    'Minimal Stand',
    'Minimal Stand',
    'Minimal Stand',
  ];
  List<String> productprice = [
    '\$ 25.00',
    '\$ 25.00',
    '\$ 25.00',
    '\$ 25.00',
    '\$ 25.00',
    '\$ 25.00',
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
        padding: const EdgeInsets.only(left: 7, right: 7, top: 40, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
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
                SizedBox(width:0,),
                    Text(
                      "My Cart",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                SizedBox(width: 50,),
                Text(
                  "",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: productname.length,
                padding: const EdgeInsets.all(0),
                shrinkWrap: true,
                itemBuilder: (context,index){
                  final image = productimage[index].toString();
                  final name = productname[index].toString();
                  final price = productprice[index].toString();
                  return  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(top: 15 ,bottom: 15 ,left: 15 ,right: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image(height: 100, width: 100,fit: BoxFit.fill,
                                    image: NetworkImage(productimage[index].toString()),
                                  ),
                                ),
                              ),
                              SizedBox(width: 7,),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(productname[index].toString() , style: TextStyle(
                                      fontSize: 16,
                                    ),),
                                    SizedBox(height: 8,),
                                    Text(productprice[index].toString(), style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                          Container(
                                          height: 30,
                                          width: 30,
                                          child: InkWell(
                                            child: Container(
                                              child: Icon(Icons.add , size: 25,color: Colors.black,),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                                  color: Colors.black12
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 13,),
                                        Text("01" , style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 22
                                        ),),
                                        SizedBox(width: 13,),
                                         Container(
                                          height: 30,
                                          width: 30,
                                          child: InkWell(
                                            child: Container(
                                              child: Icon(Icons.remove , size: 25,color: Colors.black,),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                                  color: Colors.black12
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: const EdgeInsets.only(right: 8),
                                  alignment: Alignment.bottomRight,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: (){},
                                        child:Image(
                                          image: AssetImage('assets/images/Shape.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8 ,right:8 ,top: 5 ,bottom: 5 ),
                        child: Image.asset('assets/images/Devider.png' ,color: Colors.black26 ,fit:BoxFit.fill, width: 10000,height: 1.0,),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 8,),
            Container(
              padding: const EdgeInsets.only(left: 12,right: 10),
                    child:Container(
                      height: 60,
                      child: Card(
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                cursorColor: Colors.black45,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white38,),
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white38,),
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white38),
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                  ),
                                  labelText: 'Enter your promo code',
                                  labelStyle: TextStyle(
                                    color: Colors.black54,),
                                ),
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 50,
                              child: InkWell(
                                child: Container(
                                  child: Icon(Icons.navigate_next_sharp , size: 25,color: Colors.white,),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(7)),
                                      color: Colors.black
                                  ),
                                ),
                              ),

                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                      ),
                    ),
                  ),
             Container(
                padding: const EdgeInsets.only(left: 16 ,right: 10),
                child: Container(
                    height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                                child: Text('Total:' , style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.black54,
                                ),),
                              ),
                            Expanded(
                              flex: 1,
                                child: Text("\$ 95.00" , style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold
                                ),),
                            ),
                          ],
                        ),
                      ),
                  ),
            SizedBox(height: 6,),
            Padding(
              padding: const EdgeInsets.only(left: 16 ,right: 15),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return mycartpage();
                      })
                  );
                },
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                    MaterialPageRoute(builder: (context){
                      return checkoutpage();
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
                        "Check out",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(7.0))),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

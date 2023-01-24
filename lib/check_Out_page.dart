import 'package:ecommerce_app_ui_kite/add_payment_method.dart';
import 'package:ecommerce_app_ui_kite/add_shipping_address.dart';
import 'package:ecommerce_app_ui_kite/my_cart_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'congrats_page.dart';
import 'home_page.dart';

class checkoutpage extends StatefulWidget {
  late final fullname;
  late final address;
  late final zipcode;
  late final country;
  late final city;
  late final district;
  late final value;
  checkoutpage ({
    this.fullname,
    this.address,
    this.zipcode,
    this.country,
    this.city,
    this.district,
    this.value,
  });
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return checkoutpagestate();
  }
}

class checkoutpagestate extends State<checkoutpage> {
  TextStyle headingtext = TextStyle(
    color: Colors.black54,
    fontSize: 23,
  );
  double size =23;
  Color black = Colors.black;
  Color  shadowColor = Color(0x268A959E);

  bool checkout = false;
  bool payment = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 40, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return mycartpage();
                            })
                          );
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(width:0,),
                    Text(
                      "Check out",
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
                SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.only(left: 17 ,right: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shipping address",
                          style: headingtext,
                        ),
                        SizedBox(width:0,),
                        Text(
                          "",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 50,),
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                checkout = true;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context){
                                    return addshippingaddresspage(checkout:checkout);
                                  })
                              );
                            },
                            icon: Icon(
                              Icons.edit,
                              size: size,
                              color: black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                 Container(
                   // decoration: BoxDecoration(
                   //   boxShadow: [
                   //     BoxShadow(
                   //       color: Colors.grey.withOpacity(0.5),
                   //       spreadRadius: 5,
                   //       blurRadius: 7,
                   //       offset: Offset(0,3),
                   //     ),
                   //   ],
                   // ),
                   padding: const EdgeInsets.only(left: 15 ,right: 15),
                   child: Card(
                     elevation:8,
                     borderOnForeground: true,
                     shadowColor: shadowColor,
                      child: Container(
                        padding: const EdgeInsets.only(top: 8 ,bottom: 8 ,left: 8 ,right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15 ,left: 10 ,right: 10 , bottom: 15),
                              child: Text(widget.value == true ? widget.fullname :"Bruno Fernandes", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8 ,right: 10 , bottom: 15),
                              child: Image.asset('assets/images/Devider.png' ,color: Colors.black26 ,fit:BoxFit.fill, width: 10000,height: 1.0,),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 8 ,right: 8 ,bottom: 15) ,
                              child: Text(widget.value == true ? widget.address+", " + widget.city + ", " +
                                  widget.district + ", " + widget.country + ", " +  widget.zipcode : "25 rue Robert Latouche, Nice, 06200, Cote\nD'azur, France" , style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54
                              ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                 ),
                SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.only(left: 17 ,right: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payment",
                        style: headingtext,
                      ),
                      SizedBox(width:0,),
                      Text(
                        "",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 50,),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              payment = true;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context){
                                  return addpaymentmethodpage(payment:payment);
                                })
                            );
                          },
                          icon: Icon(
                            Icons.edit,
                            size: size,
                            color: black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15 ,right: 15),
                  child: Card(
                      elevation:8,
                      borderOnForeground: true,
                      shadowColor:shadowColor,
                    child: Container(
                      padding: const EdgeInsets.only(top: 8 ,bottom: 8 ,left: 15 ,right: 5),
                      child:  Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10 ,bottom: 10  ,right: 10 ,left: 10),
                                child:  Image(height:30,width: 55,fit: BoxFit.fill,
                                    image: AssetImage('assets/images/mastercard (4).png'),
                                  ),
                                ),
                              ),
                            ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("**** **** ****" , style: TextStyle(
                                fontSize: 15,
                              ),),
                               SizedBox(height: 10,),
                               Text("3947" ,style: TextStyle(fontSize: 17),),
                            ],
                          ),
                        ],
                      ),
                    )
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.only(left: 17 ,right: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery method",
                        style: headingtext,
                      ),
                      SizedBox(width:0,),
                      Text(
                        "",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 50,),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            size: size,
                            color: black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15 ,right: 15),
                  child: Card(
                    elevation:8,
                    borderOnForeground: true,
                    shadowColor: shadowColor,
                    child: Container(
                      padding: const EdgeInsets.only(top: 20 ,bottom: 20,left: 15 ,right: 5),
                      child: Row(
                        children: [
                          Image(
                              image: AssetImage('assets/images/dhl (2).png'),
                          ),
                          SizedBox(width: 10,),
                          Text("Fast (2-3days)" , style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.only(left: 17 ,right: 15),
                  child: Card(
                    elevation:8,
                    borderOnForeground: true,
                    shadowColor: shadowColor,
                    child: Container(
                      padding: const EdgeInsets.only(top: 20 ,bottom: 20,left: 15 ,right: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Order",
                                style: headingtext
                              ),
                              SizedBox(width:0,),
                              Text(
                                "",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 50,),
                              Align(
                                alignment: Alignment.topRight,
                                child:  Text(
                                  "\$ 95.00",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,

                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery",
                                style: headingtext
                              ),
                              SizedBox(width:0,),
                              Text(
                                "",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 50,),
                              Align(
                                alignment: Alignment.topRight,
                                child:  Text(
                                  "\$ 5.00",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,

                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total",
                                style: headingtext
                              ),
                              SizedBox(width:0,),
                              Text(
                                "",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 50,),
                              Align(
                                alignment: Alignment.topRight,
                                child:  Text(
                                  "\$ 100.00",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 18 ,right: 16),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context){
                            return congratspage();
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
                          "Submit order",
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

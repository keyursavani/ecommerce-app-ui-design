import 'package:ecommerce_app_ui_kite/check_Out_page.dart';
import 'package:ecommerce_app_ui_kite/paymentmethod_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addpaymentmethodpage extends StatefulWidget{
  late final payment;
  addpaymentmethodpage({
    this.payment,
});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return addpaymentmethodpagestate();
  }
}
class addpaymentmethodpagestate extends State<addpaymentmethodpage>{
  final cardholdername = TextEditingController();
  final cardnumber = TextEditingController();
  final cvv = TextEditingController();
  final expirationdate = TextEditingController();
  bool value = false;
  TextStyle textStyle = TextStyle(
      color: Colors.black54
  );
  TextStyle textStyle2 = TextStyle(
      fontSize: 18,
      color: Colors.black45
  );
  TextStyle textStyle3 =TextStyle(
      fontSize: 18,
      color: Colors.black
  );
  Color  cursorColor = Colors.black45;
  final enabledBorder =  OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(0),),
  borderSide: BorderSide(color: Colors.white10),
  );
  final enabledBorder2= OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(0),),
  borderSide: BorderSide(color: Colors.white ),
  );
  final  decoration =  BoxDecoration(
  color: Colors.black12,
  borderRadius:BorderRadius.all(Radius.circular(3.0)),
  );
  final decoration2= BoxDecoration(
  color: Colors.white,
  borderRadius:BorderRadius.all(Radius.circular(3.0)),
  border: Border.all(color: Colors.black26,)
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                    "Add payment method",
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
              Padding(
                padding: const EdgeInsets.only(top: 20 ,left: 15 ,right: 15),
                child: Align(
                  alignment: Alignment.topLeft ,
                  // padding: const EdgeInsets.only(top: 20,left: 0 ,right: 0),
                  child: Image( fit: BoxFit.fill,width: 500,
                    image: AssetImage('assets/images/Property=New.png' ),
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 15 , right: 15 ,top: 30),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10 , left: 15 ),
                        child: Text("CardHolder Name" , style: textStyle),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7 , left: 0 ),
                        child: SizedBox(
                          height: 35,
                          child: TextField(
                            controller: cardholdername,
                            style: textStyle2,
                            cursorColor: cursorColor,
                            decoration: InputDecoration(
                              enabledBorder: enabledBorder,
                              border: enabledBorder,
                              focusedBorder: enabledBorder,
                              labelText: "Ex: Bruno Pham",
                              labelStyle: textStyle2,
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                            ),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 10 , left: 15 ),
                      //   child: Text("Ex: Bruno Pham" , style: TextStyle(
                      //       fontSize: 18,
                      //       color: Colors.black45
                      //   ),),
                      // ),
                      SizedBox(height: 7,),
                    ],
                  ),
                  decoration: decoration,
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 15 , right: 15 ,top: 30),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10 , left: 15 ),
                        child: Text("Card Number" , style: textStyle),
                      ),
                      SizedBox(
                        height: 35,
                        child: TextField(
                          controller: cardnumber,
                          style: textStyle3,
                          cursorColor:cursorColor,
                          decoration: InputDecoration(
                            enabledBorder: enabledBorder2,
                            border: enabledBorder2,
                            focusedBorder: enabledBorder2,
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                    ],
                  ),
                  decoration: decoration2,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 15 ,right: 15 ,top: 30),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10 , left: 15 ),
                                child: Text("cvv" , style: textStyle,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5 , left: 0 ),
                                child: SizedBox(
                                  height: 35,
                                  child: TextField(
                                    controller: cvv,
                                    style: textStyle2,
                                    cursorColor:cursorColor,
                                    decoration: InputDecoration(
                                      enabledBorder: enabledBorder,
                                      border: enabledBorder,
                                      focusedBorder: enabledBorder,
                                      labelText: "Ex: 123",
                                      labelStyle: textStyle2,
                                      floatingLabelBehavior: FloatingLabelBehavior.never,
                                    ),
                                  ),
                                ),
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.only(top: 13 , left: 15 ),
                              //   child: Text("Ex: 123" , style: TextStyle(
                              //       fontSize: 18,
                              //       color: Colors.black45
                              //   ),),
                              // ),
                              SizedBox(height: 5,),
                            ],
                          ),
                          decoration: decoration,
                        ),
                      ),
                      SizedBox(width: 25,),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10 , left: 15 ),
                                child: Text("Expiration Date" , style: textStyle,),
                              ),
                              SizedBox(
                                height: 35,
                                // width: 40,
                                child: TextField(
                                  controller: expirationdate,
                                  style: textStyle3,
                                  cursorColor: cursorColor,
                                  decoration: InputDecoration(
                                    enabledBorder: enabledBorder2,
                                    border: enabledBorder2,
                                    focusedBorder: enabledBorder2,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                            ],
                          ),
                          decoration: decoration2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(left: 15 ,right: 15 ,top: 60, bottom: 20 ),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        value = true;
                      });
                      if(widget.payment == true){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return checkoutpage(
                                  // cardholdername:cardholdername.text  , cardnumber:cardnumber.text  ,cvv:cvv.text  , expirationdate: expirationdate.text , value:value
                              );
                            })
                        );
                      }
                      else{
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return paymentmethodpage(
                                  cardholdername:cardholdername.text  , cardnumber:cardnumber.text  ,cvv:cvv.text  , expirationdate: expirationdate.text , value:value
                              );
                            })
                        );
                      }
                    },
                    child: Container(
                      // width: 230,
                      height: 55,
                      padding: const EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Add new card",
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(7.0))),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
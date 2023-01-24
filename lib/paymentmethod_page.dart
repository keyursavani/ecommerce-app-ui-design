import 'package:ecommerce_app_ui_kite/add_payment_method.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class paymentmethodpage extends StatefulWidget{
  late final  cardholdername;
  late final cardnumber;
  late final cvv;
  late final expirationdate;
  late final value;
  paymentmethodpage({
   this.cardholdername,
   this.cardnumber,
   this.expirationdate,
   this.cvv,
    this.value,
});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return paymentmethodpagestate();
  }
}
class paymentmethodpagestate extends State<paymentmethodpage>{
  bool isChecked1 = true;
  bool isChecked2 = false;
  TextStyle cn = TextStyle(
      fontSize: 20,
      color: Colors.white
  );
  TextStyle chn = TextStyle(
    color: Colors.white70,
  );
  TextStyle name = TextStyle(
      color:Colors.white
  );
  double size =17 ;
  Color black = Colors.black;
  Color black54 = Colors.black54;
  @override
  Widget build(BuildContext context) {
    print(widget.cardholdername);
    print(widget.cardnumber);
    print(widget.cvv);
    print(widget.expirationdate);
    print(widget.value);
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 40 ,bottom: 20),
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
                        "Payment Method",
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
              SizedBox(height: 10,),
              Container(
                  padding: const EdgeInsets.only(top: 0,left: 15 ,right:15),
                  child: Card(
                    child: Container(
                      child: Stack(
                        children: [
                          Image(width: 450, fit: BoxFit.fill,
                            image:  isChecked1 ? AssetImage('assets/images/Rectangle.png')
                                : AssetImage('assets/images/Rectangle (1).png'),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child:Image(
                                image: AssetImage('assets/images/Vector.png'),
                              )
                          ),
                          Positioned(
                            top: 15,
                            left: 15,
                            child:Image(
                              image: AssetImage('assets/images/visa.png'),
                            ),
                          ),
                          Positioned(
                              top: 60,
                              left: 15,
                              child:Text( "* * * *   * * * *   * * * *   3947    " , style: cn)
                          ),
                          Positioned(
                            left: 15,
                            bottom: 20,
                            child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Card Holder Name " , style: chn),
                                SizedBox(height: 5,),
                                Text("Jennyfer Doe" , style: name)
                              ],
                            ),
                          ),
                          Positioned(
                              right:30,
                              bottom: 20,
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Expiry Date" , style: chn),
                                  SizedBox(height: 5,),
                                  Text("05/23", style: name)
                                ],
                              ))
                        ],
                      ),
                    ),
                  )
              ),
              // Container(
              //   padding: const EdgeInsets.only(left: 17 ,right: 17),
              //   child: Align(
              //     alignment: Alignment.topLeft ,
              //     // padding: const EdgeInsets.only(top: 20,left: 0 ,right: 0),
              //     child: Image( fit: BoxFit.fill,width: 450,
              //       image: isChecked1 ?
              //       AssetImage('assets/images/Property=Active (3).png' )
              //           :  AssetImage('assets/images/Property=Default (2).png' ),
              //     ),
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.only(left:5 ,right: 8),
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: isChecked1 ? black : black54,
                      focusColor: isChecked1 ? black : black54,
                      value: isChecked1,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked1 = value!;
                        });
                      },
                    ),
                    Text("Use as default payment method" , style: TextStyle(
                        color:isChecked1
                            ? black
                            : black54,
                      fontSize:size,
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              // Container(
              //  padding: const EdgeInsets.only(top: 0,left: 20 ,right: 20),
              //   child: Align(
              //     alignment: Alignment.topLeft ,
              //     child: Image( fit: BoxFit.fill,width: 450,
              //       image: isChecked2 ?
              //       AssetImage('assets/images/Property=Active (3).png' )
              //           :  AssetImage('assets/images/Property=Default (2).png' ),
              //     ),
              //   ),
              // ),
              Container(
                  padding: const EdgeInsets.only(top: 0,left: 15 ,right: 15),
                  child: Card(
                    child: Container(
                      child: Stack(
                        children: [
                          Image(width: 450, fit: BoxFit.fill,
                              image: isChecked2 ? AssetImage('assets/images/Rectangle.png')
                                  : AssetImage('assets/images/Rectangle (1).png'),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child:Image(
                                image: AssetImage('assets/images/Vector.png'),
                              )
                          ),
                          Positioned(
                            top: 15,
                            left: 15,
                            child:Image(
                              image: AssetImage('assets/images/mastercard (5).png'),
                            ),
                          ),
                          Positioned(
                              top: 60,
                              left: 15,
                              child:Text(widget.value == true ? widget.cardnumber : "* * * *   * * * *   * * * *   * * * * " , style: cn),
                          ),
                          Positioned(
                            left: 15,
                            bottom: 20,
                            child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Card Holder Name " , style: chn),
                                SizedBox(height: 5,),
                                Text(widget.value == true ? widget.cardholdername : "XYZ" , style: name)
                              ],
                            ),
                          ),
                          Positioned(
                              right:30,
                              bottom: 20,
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Expiry Date" , style: chn),
                                  SizedBox(height: 5,),
                                  Text(widget.value == true ? widget.expirationdate : "EX: 00/00", style: name)
                                ],
                              ))
                        ],
                      ),
                    ),
                  )
              ),
              SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.only(left:5 ,right: 8),
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: isChecked2 ? black : black54,
                      focusColor: isChecked2 ? black : black54,
                      value: isChecked2,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked2 = value!;
                        });
                      },
                    ),
                    Text("Use as default payment method" , style: TextStyle(
                        color:isChecked2
                            ? black
                            : black54,
                      fontSize: size,
                    ),),
                  ],
                ),
              ),
                Container(
                  padding: EdgeInsets.only(top: 40 ,right: 23),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context){
                            return addpaymentmethodpage();
                          })
                        );
                      },
                      backgroundColor: Colors.white,
                      child: Icon(Icons.add , color: Colors.black,),
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
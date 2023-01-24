import 'package:ecommerce_app_ui_kite/add_shipping_address.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class shippingaddresspage extends StatefulWidget{
  late final fullname;
  late final address;
  late final zipcode;
  late final country;
  late final city;
  late final district;
  late final value;
  shippingaddresspage ({
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
   return shippingaddresspagestate();
  }
}
class shippingaddresspagestate extends State<shippingaddresspage>{
  bool isChecked1 = true;
  bool isChecked2 = false;
  bool isChecked3 = false;

  Color black = Colors.black;
  Color black54 =Colors.black54;
  double size = 20;
  Color shadowColor = Color(0x268A959E);

  TextStyle textStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold
  );
  TextStyle textStyle2 =TextStyle(
      fontSize: 16,
      color: Colors.black54
  );

  @override
  Widget build(BuildContext context) {
    print(widget.fullname);
    print(widget.address);
    print(widget.zipcode);
    print( widget.country);
    print(widget.city);
    print(widget.district);
    print(widget.value);
    // TODO: implement build
   return Scaffold(
     body: SingleChildScrollView(
       child: Container(
         padding: const EdgeInsets.only(top: 40 ,bottom: 20),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.end,
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
                   "Shipping address",
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
             Container(
               padding: const EdgeInsets.only(left:0 ,right: 10,top: 10),
               child: Row(
                 children: [
                   Checkbox(
                     checkColor: Colors.white,
                     activeColor: isChecked1 ? black :  black54,
                     focusColor: isChecked1 ? black :  black54,
                     value: isChecked1,
                     onChanged: (bool? value) {
                       setState(() {
                         isChecked1 = value!;
                       });
                     },
                   ),
                    Text("Use as the shipping address" , style: TextStyle(
                     color:isChecked1
                     ? black
                     : black54,
                      fontSize:size,
                    ),),
                 ],
               ),
             ),
             Container(
               padding: const EdgeInsets.only(left: 13 ,right: 13),
               child: Card(
                 elevation:8,
                 borderOnForeground: true,
                 shadowColor:shadowColor,
                 child: Container(
                   padding: const EdgeInsets.only(top: 8 ,bottom: 8 ,left: 8 ,right: 5),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 15 ,left: 10 ,right: 10 , bottom: 15),
                         child: Text(widget.value == true ? widget.fullname : "Bruno Fernandes", style: textStyle),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8 ,right: 10 , bottom: 15),
                         child: Image.asset('assets/images/Devider.png' ,color: Colors.black26 ,fit:BoxFit.fill, width: 10000,height: 1.0,),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8 ,right: 8 ,bottom: 15) ,
                         child: Text(widget.value == true ? widget.address+", " + widget.city + ", " +
                             widget.district + ", " + widget.country + ", " +  widget.zipcode : "25 rue Robert Latouche, Nice, 06200, Cote D'azur, France" ,
                           style: textStyle2),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
             SizedBox(height: 10,),
             Container(
               padding: const EdgeInsets.only(left:0 ,right: 10,top: 10),
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
                   Text("Use as the shipping address" , style: TextStyle(
                       color:isChecked2
                           ? black
                           : black54,
                       fontSize: size,
                   ),),
                 ],
               ),
             ),
             Container(
               padding: const EdgeInsets.only(left: 13 ,right: 13),
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
                         child: Text("Bruno Fernandes", style: textStyle),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8 ,right: 10 , bottom: 15),
                         child: Image.asset('assets/images/Devider.png' ,color: Colors.black26 ,fit:BoxFit.fill, width: 10000,height: 1.0,),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8 ,right: 8 ,bottom: 15) ,
                         child: Text("25 rue Robert Latouche, Nice, 06200, Cote D'azur, France" , style: textStyle2),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
             SizedBox(height: 10,),
             Container(
               padding: const EdgeInsets.only(left:0 ,right: 10,top: 10),
               child: Row(
                 children: [
                   Checkbox(
                     checkColor: Colors.white,
                     activeColor: isChecked3 ? black : black54,
                     focusColor: isChecked3 ? black : black54,
                     value: isChecked3,
                     onChanged: (bool? value) {
                       setState(() {
                         isChecked3 = value!;
                       });
                     },
                   ),
                   Text("Use as the shipping address" , style: TextStyle(
                       color:isChecked3
                           ? black
                           : black54,
                       fontSize:size,
                   ),),
                 ],
               ),
             ),
             Container(
               padding: const EdgeInsets.only(left: 13 ,right: 13),
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
                         child: Text("Bruno Fernandes", style: textStyle),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8 ,right: 10 , bottom: 15),
                         child: Image.asset('assets/images/Devider.png' ,color: Colors.black26 ,fit:BoxFit.fill, width: 10000,height: 1.0,),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8 ,right: 8 ,bottom: 15) ,
                         child: Text("25 rue Robert Latouche, Nice, 06200, Cote D'azur, France" , style: textStyle2),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
             Container(
               padding: const EdgeInsets.only(top: 30,right: 17),
               child: FloatingActionButton(
                   onPressed: (){
                     // Navigator.pop(context);
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context){
                         return addshippingaddresspage();
                       })
                     );
                   },
                 backgroundColor: Colors.white,
                 child: Icon(Icons.add , color: Colors.black,),
               ),
             ),
           ],
         ),
       ),
     ),
   );
  }
}
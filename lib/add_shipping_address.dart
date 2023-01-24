import 'package:ecommerce_app_ui_kite/check_Out_page.dart';
import 'package:ecommerce_app_ui_kite/shipping_address_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addshippingaddresspage extends StatefulWidget{
  late final checkout;
  addshippingaddresspage({
    this.checkout,
});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return addshippingaddresspagestate();
  }
}
class addshippingaddresspagestate extends State<addshippingaddresspage>{
  String dropdownvalue = 'India';
  String dropdownvalue2 = 'Bhavnagar';
  String dropdownvalue3 = 'Surat';

  // List of items in our dropdown menu
  var items = [
    'India',
    'U.S',
    'U.K',
    'Dubai',
    'Canada',
  ];
  var items2 = [
    'Bhavnagar',
    'Surat',
    'Ahemdabad',
    'Rajkot',
    'Baroda',
  ];

  var items3 = [
    'Surat',
    'Vadodara',
    'Anand',
    'Gandhi Nagar	',
    'Junagadh',
  ];
  final fullname = TextEditingController();
  final address = TextEditingController();
  final zipcode = TextEditingController();
  bool value = false;

  TextStyle textStyle = TextStyle(
      color: Colors.black54
  );
  TextStyle textStyle2 = TextStyle(
      fontSize: 18,
      color: Colors.black
  );
  Color  cursorColor= Colors.black45;

   final enabledBorder =  OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(0),),
  borderSide: BorderSide(color: Colors.white ),
  );
   final decoration = BoxDecoration(
  color: Colors.white,
  borderRadius:BorderRadius.all(Radius.circular(3.0)),
  border: Border.all(color: Colors.black26,)
  );
  @override
  Widget build(BuildContext context) {
    print(widget.checkout);
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
                  "Add Shipping address",
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
              padding:const EdgeInsets.only(left: 17 , right: 17 ,top: 23),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10 , left: 15 ),
                      child: Text("Full name" , style: textStyle),
                    ),
                    SizedBox(
                      height: 35,
                      child: TextField(
                        controller: fullname,
                        style: textStyle2,
                        cursorColor: cursorColor,
                        decoration: InputDecoration(
                            enabledBorder: enabledBorder,
                            border: enabledBorder,
                            focusedBorder: enabledBorder,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                ),
                decoration: decoration,
              ),
            ),
            Padding(
              padding:const EdgeInsets.only(left: 17 , right: 17 ,top: 23),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10 , left: 15 ),
                      child: Text("Address" , style: textStyle),
                    ),
                    SizedBox(
                      height: 35,
                      child: TextField(
                        controller: address,
                        style: textStyle2,
                        cursorColor: Colors.black45,
                        decoration: InputDecoration(
                          enabledBorder: enabledBorder,
                          border: enabledBorder,
                          focusedBorder: enabledBorder,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                ),
                decoration:decoration,
              ),
            ),
            Padding(
              padding:const EdgeInsets.only(left: 17 , right: 17 ,top: 23),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10 , left: 15 ),
                      child: Text("Zipcode (Postal Code)" , style: textStyle),
                    ),
                    SizedBox(
                      height: 35,
                      child: TextField(
                        controller: zipcode,
                        style: textStyle2,
                        cursorColor: Colors.black45,
                        decoration: InputDecoration(
                          enabledBorder: enabledBorder,
                          border: enabledBorder,
                          focusedBorder: enabledBorder,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                ),
                decoration: decoration,
              ),
            ),
            Padding(
              padding:const EdgeInsets.only(left: 17 , right: 17 ,top: 23),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10 , left: 15 ),
                      child: Text("Country" , style: textStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5 , left: 15 ,right: 15 ),
                      child: SizedBox(
                        height: 33,
                        width: double.infinity,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            hint: Text("Select Value"),
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black
                            ),
                            value: dropdownvalue,
                            icon: const Icon(Icons.keyboard_arrow_down ,size: 25 , color: Colors.black,),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                ),
                decoration: decoration,
              ),
            ),
            Padding(
              padding:const EdgeInsets.only(left: 17 , right: 17 ,top: 23),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10 , left: 15 ),
                      child: Text("City" , style: textStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5 , left: 15 ,right: 15 ),
                      child: SizedBox(
                        height: 33,
                        width: double.infinity,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            hint: Text("Select Value"),
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black
                            ),
                            value: dropdownvalue2,
                            icon: const Icon(Icons.keyboard_arrow_down ,size: 25 , color: Colors.black,),
                            items: items2.map((String items2) {
                              return DropdownMenuItem(
                                value: items2,
                                child: Text(items2),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue2 = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                ),
                decoration: decoration,
              ),
            ),
            Padding(
              padding:const EdgeInsets.only(left: 17 , right: 17 ,top: 23),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10 , left: 15 ),
                      child: Text("District" , style: textStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5 , left: 15 ,right: 15 ),
                      child: SizedBox(
                        height: 33,
                        width: double.infinity,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            hint: Text("Select Value"),
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black45
                            ),
                            value: dropdownvalue3,
                            icon: const Icon(Icons.keyboard_arrow_down ,size: 25 , color: Colors.black,),
                            items: items3.map((String items3) {
                              return DropdownMenuItem(
                                value: items3,
                                child: Text(items3),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue3 = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius:BorderRadius.all(Radius.circular(3.0)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17 ,right: 17 , top: 40 , bottom: 15),
              child: InkWell(
                onTap: (){
                  setState(() {
                    value = true;
                  });
                  if(widget.checkout == true){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context){
                          return checkoutpage(
                              fullname:fullname.text , address:address.text, zipcode:zipcode.text , country:dropdownvalue ,
                              city: dropdownvalue2 , district:dropdownvalue3 , value:value
                          );
                        })
                    );
                  }
                  else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context){
                          return shippingaddresspage(
                              fullname:fullname.text , address:address.text, zipcode:zipcode.text , country:dropdownvalue ,
                              city: dropdownvalue2 , district:dropdownvalue3 , value:value
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
                      "Save address",
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
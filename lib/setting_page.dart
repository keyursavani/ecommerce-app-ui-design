import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class settingpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return settingpagestate();
  }
}
class settingpagestate extends State<settingpage>{
  bool status = true;
  bool status2 = false;
  bool status3 = false;
  TextStyle heading = TextStyle(
    color: Colors.black54,
    fontSize: 23,
  );
  Color black = Colors.black;
  double size =23;
  Color  shadowColor = Color(0x268A959E);
  TextStyle textStyle =TextStyle(
      color: Colors.black54
  );
  TextStyle textStyle2 = TextStyle(
      fontSize: 18,
      color: Colors.black
  );
  double size2 = 30;
  Color  black54 = Colors.black54;
  TextStyle textStyle3 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 40 , bottom: 30),
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
                    "Setting",
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
                padding: const EdgeInsets.only(left: 15 ,right: 5 ,top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Personal Inrformation" ,style: heading),
                    IconButton(onPressed: (){}, icon:Icon(Icons.edit ,
                      size: size,
                      color:black,),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15 ,right: 15,top:2 ),
                child: Card(
                  elevation:8,
                  borderOnForeground: true,
                  shadowColor: shadowColor,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 15 ,right: 15,top: 10 ,bottom: 10 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text("Name" , style: textStyle),
                        SizedBox(height: 10,),
                        Text("Bruno Pham" ,style: textStyle2),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15 ,right: 15,top:10 ),
                child: Card(
                  elevation:8,
                  borderOnForeground: true,
                  shadowColor: shadowColor,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 15 ,right: 15,top: 10 ,bottom: 10 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email" , style: textStyle),
                        SizedBox(height: 10,),
                        Text("bruno203@gmail.com" ,style: textStyle2)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15 ,right: 5 ,top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Password" ,style: heading),
                    IconButton(onPressed: (){}, icon:Icon(Icons.edit ,
                      size: size,
                      color: black,),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15 ,right: 15,top:2 ),
                child: Card(
                  elevation:8,
                  borderOnForeground: true,
                  shadowColor:shadowColor,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 15 ,right: 15,top: 10 ,bottom: 10 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name" , style: textStyle),
                        SizedBox(height: 10,),
                        Text("***********" ,style: textStyle2),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: const EdgeInsets.only(top: 35 ,left: 14),
                  child:  Text("Notification" ,style: heading),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15 ,right: 15,top:13 ),
                child: Card(
                  elevation:8,
                  borderOnForeground: true,
                  shadowColor:shadowColor,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 15 ,right: 15,top: 15 ,bottom: 15 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sales" , style: textStyle2),
                        FlutterSwitch(
                          width: 50.0,
                          height: 29.0,
                          // valueFontSize: 25.0,
                          toggleSize: 20.0,
                          value: status,
                          borderRadius:30.0,
                          activeColor: Colors.green,
                          // padding: 8.0,
                          // showOnOff: true,
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15 ,right: 15,top:10 ),
                child: Card(
                  elevation:8,
                  borderOnForeground: true,
                  shadowColor: shadowColor,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 15 ,right: 15,top: 15 ,bottom: 15 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("New arivals" , style: textStyle2),
                        FlutterSwitch(
                          width: 50.0,
                          height: 29.0,
                          // valueFontSize: 25.0,
                          toggleSize: 20.0,
                          value: status2,
                          borderRadius:30.0,
                          activeColor: Colors.green,
                          // padding: 8.0,
                          // showOnOff: true,
                          onToggle: (val) {
                            setState(() {
                              status2 = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15 ,right: 15,top:10),
                child: Card(
                  elevation:8,
                  borderOnForeground: true,
                  shadowColor: shadowColor,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 15 ,right: 15,top: 15 ,bottom: 15 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery status changes" , style: textStyle2),
                        FlutterSwitch(
                          width: 50.0,
                          height: 29.0,
                          // valueFontSize: 25.0,
                          toggleSize: 20.0,
                          value: status3,
                          borderRadius:30.0,
                          activeColor: Colors.green,
                          // padding: 8.0,
                          // showOnOff: true,
                          onToggle: (val) {
                            setState(() {
                              status3 = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 45 ,left: 14),
                  child:  Text("Help center" ,style: heading),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15 ,right: 15,top:13),
                child: Card(
                  elevation:8,
                  borderOnForeground: true,
                  shadowColor: shadowColor,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 15 ,right: 5,top: 7 ,bottom: 7 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("FAQ" , style: textStyle3),
                      IconButton(onPressed: (){},
                          icon:Icon(Icons.navigate_next,size:size2,color:black54,) ,
                      ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15 ,right: 15,top:10),
                child: Card(
                  elevation:8,
                  borderOnForeground: true,
                  shadowColor: shadowColor,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 15 ,right: 5,top: 7 ,bottom: 7 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Contact Us" , style: textStyle3),
                        IconButton(onPressed: (){},
                          icon:Icon(Icons.navigate_next,size:size2,color:black54,) ,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15 ,right: 15,top:10),
                child: Card(
                  elevation:8,
                  borderOnForeground: true,
                  shadowColor: shadowColor,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 15 ,right: 5,top: 7 ,bottom: 7 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Privacy & Terms" , style: textStyle3),
                        IconButton(onPressed: (){},
                          icon:Icon(Icons.navigate_next , size: size2,color:black54,) ,
                        ),
                      ],
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
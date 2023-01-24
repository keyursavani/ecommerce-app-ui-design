import 'package:ecommerce_app_ui_kite/home_page.dart';
import 'package:ecommerce_app_ui_kite/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class orderspage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return orderspagestate();
  }
}
class orderspagestate extends State<orderspage> with
    SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  TextStyle textStyle = TextStyle(
      color: Colors.black54,
      fontSize: 18
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Naigation"),
      // ),
      body:  Container(
          padding: const EdgeInsets.only(top: 40, bottom: 15),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10 ,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(builder: (context){
                          //       return homepage();
                          //     })
                          // );
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
                      "My orders",
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
              ),
              Container(
                child: TabBar(
                unselectedLabelColor: Colors.black54,
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                indicatorWeight:4.0,
                indicatorSize:TabBarIndicatorSize.label,
                indicatorPadding: const EdgeInsets.all(10),
                tabs: [
                  Tab(
                  child: Text("Delivered" , style: TextStyle(
                    fontSize: 17,
                  ),),
                  ),
                  Tab(
                   child: Text("Processing",style: TextStyle(
                     fontSize: 17,
                   ),),
                  ),
                  Tab(
                   child: Text("Canceled" ,style: TextStyle(
                     fontSize: 17,
                   ),),
                  )
                ],
                controller: _tabController,
              ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    deliveredpage(),
                   processingpage(),
                     canceledpage(),
                  ],
                  controller: _tabController,
                ),
              ),
            ],
          ),
        ),
    );
  }
}
class processingpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return processingpagestate();
  }
}
class processingpagestate extends State<processingpage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text("Processing Page"),
      ),
    );
  }
}

class canceledpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return canceledpagestate();
  }
}
class canceledpagestate extends State<canceledpage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text("Canceled Page"),
      ),
    );
  }
}

class deliveredpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return deliveredpagestate();
  }
}
class deliveredpagestate extends State<deliveredpage>{
  TextStyle textStyle = TextStyle(
      color: Colors.black54,
      fontSize: 18
  );
  TextStyle textStyle2 = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold
  );
  TextStyle orderstyle =TextStyle(
    fontSize: 18,
  );
  Color   shadowColor =  Color(0x268A959E);
  TextStyle datestyle = TextStyle(
      color: Colors.black54,
      fontSize: 15
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 15 ,right: 15 ,top:10, bottom: 20),
          child: Column(
            children: [
              SizedBox(height: 6,),
                  Card(
                    elevation:8,
                    borderOnForeground: true,
                    shadowColor: Color(0x268A959E),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18 ,right: 12 ,left: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Order No238562312" , style: orderstyle),
                              Text("20/03/2020" , style: datestyle),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0 ,right:0 ,top:13 ,bottom: 0 ),
                          child: Image.asset('assets/images/Devider.png' ,color: Colors.black26 ,fit:BoxFit.fill, width: 10000,height: 1.0,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18 ,right: 12 ,left: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("Quantity:" , style:textStyle),
                                  Text("03" , style: textStyle2),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Total Amount:" , style: textStyle),
                                  Text("\$150" , style: textStyle2),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 33 ,right: 12 ,left: 0 ,bottom: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: (){
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(builder: (context){
                                  //       return mycartpage();
                                  //     })
                                  // );
                                },
                                child: Container(
                                  // width: 230,
                                  height: 35,
                                  padding: const EdgeInsets.only(left: 30 ,top: 5,bottom: 5 ,right: 30),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Detail",
                                      style: TextStyle(color: Colors.white, fontSize: 17),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(Radius.circular(0))),
                                ),
                              ),
                              Text("Delivered" , style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                ),
              SizedBox(height: 25,),
              Card(
                elevation:8,
                borderOnForeground: true,
                shadowColor:shadowColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18 ,right: 12 ,left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order No238562312" , style: orderstyle),
                          Text("20/03/2020" , style: datestyle)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0 ,right:0 ,top:13 ,bottom: 0 ),
                      child: Image.asset('assets/images/Devider.png' ,color: Colors.black26 ,fit:BoxFit.fill, width: 10000,height: 1.0,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18 ,right: 12 ,left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Quantity:" , style: textStyle),
                              Text("03" , style: textStyle2,),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Total Amount:" , style: textStyle),
                              Text("\$150" , style: textStyle2),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 33 ,right: 12 ,left: 0 ,bottom: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context){
                              //       return mycartpage();
                              //     })
                              // );
                            },
                            child: Container(
                              // width: 230,
                              height: 35,
                              padding: const EdgeInsets.only(left: 30 ,top: 5,bottom: 5 ,right: 30),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Detail",
                                  style: TextStyle(color: Colors.white, fontSize: 17),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.all(Radius.circular(0))),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.watch_later_outlined , color: Colors.black,),
                              SizedBox(width: 5,),
                              Text("Processing" , style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontSize: 18
                              ),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Card(
                elevation:8,
                borderOnForeground: true,
                shadowColor: shadowColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18 ,right: 12 ,left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order No238562312" , style: orderstyle),
                          Text("20/03/2020" , style: datestyle)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0 ,right:0 ,top:13 ,bottom: 0 ),
                      child: Image.asset('assets/images/Devider.png' ,color: Colors.black26 ,fit:BoxFit.fill, width: 10000,height: 1.0,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18 ,right: 12 ,left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Quantity:" , style: textStyle),
                              Text("03" , style: textStyle2),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Total Amount:" , style: textStyle),
                              Text("\$150" , style: textStyle2),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 33 ,right: 12 ,left: 0 ,bottom: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context){
                              //       return mycartpage();
                              //     })
                              // );
                            },
                            child: Container(
                              // width: 230,
                              height: 35,
                              padding: const EdgeInsets.only(left: 30 ,top: 5,bottom: 5 ,right: 30),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Detail",
                                  style: TextStyle(color: Colors.white, fontSize: 17),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.all(Radius.circular(0))),
                            ),
                          ),
                          Text("Canceled" , style: TextStyle(
                              color: Colors.red,
                              fontSize: 18
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
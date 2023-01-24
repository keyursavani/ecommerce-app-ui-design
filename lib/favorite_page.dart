import 'package:ecommerce_app_ui_kite/my_cart_page.dart';
import 'package:ecommerce_app_ui_kite/product_page.dart';
import 'package:flutter/material.dart';

class favoritepage extends StatefulWidget{
  const favoritepage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return favoritepagestate();
  }
}
class favoritepagestate extends State<favoritepage>{
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
  Widget build(BuildContext context, ) {
    // TODO: implement build
    return Scaffold(
      body:  Container(
          padding: const EdgeInsets.only(left: 7,right: 7 , top: 50 ,bottom: 10),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Text("Favorites" , style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                        fontSize: 20,
                                      ),),
                                      SizedBox(height: 10,),
                                      Text(productprice[index].toString(), style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold
                                      ),)
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
                                        SizedBox(height: 38,),
                                          Container(
                                            padding: const EdgeInsets.only(right: 10),
                                            alignment: Alignment.center,
                                            height: 40,
                                            width: 40,
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: IconButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context){
                                                          return mycartpage();
                                                        })
                                                    );
                                                  },
                                                  icon: Icon(Icons.shopping_bag)),
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(6)),
                                              color: Colors.black26,
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
              SizedBox(height: 5,),
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
                  child: Container(
                    // width: 230,
                    height: 55,
                    padding: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Add all to my cart",
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
    );
  }
}

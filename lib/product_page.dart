import 'package:ecommerce_app_ui_kite/favorite_page.dart';
import 'package:ecommerce_app_ui_kite/my_cart_page.dart';
import 'package:ecommerce_app_ui_kite/review_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'nav_home_page.dart';

class productpage extends StatefulWidget{
  late final image;
  late final price;
  late final name;
  productpage({
   this.image,
    this.price,
    this.name,
});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return productpagestate();
  }
}
class productpagestate extends State<productpage>{
  @override
  Widget build(BuildContext context) {
    final image = widget.image;
    final name = widget.name;
    final price = widget.price;
    // TODO: implement build
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20 , bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topRight,
               child: Stack(
                 children: [
                   Container(
                     padding: const EdgeInsets.only(left: 30),
                     child: ClipRRect(
                       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
                       child: Image(height: 420, fit: BoxFit.fill,
                         image: NetworkImage(
                             widget.image),
                       ),
                     ),
                   ),
                   Positioned(
                     top: 50,
                     left: 2,
                       child: Card(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.all(Radius.circular(5)),
                         ),
                         child:Align(
                           alignment: Alignment.center,
                           child: IconButton(
                             onPressed: (){
                               Navigator.pop(context);
                             },
                             icon: Icon(Icons.arrow_back_ios_sharp , size: 25, color: Colors.black,),
                           ),
                         ),
                       ),
                     ),
                   Positioned(
                     top: 140,
                       left:0.0,
                       child: Container(
                         height: 170,
                         width: 70,
                         child: Card(
                           shape: RoundedRectangleBorder(
                               borderRadius:BorderRadius.all(Radius.circular(50))
                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               SizedBox(height: 7,),
                               InkWell(
                                 enableFeedback: false,
                                 onTap: (){},
                                 child: Image.asset('assets/images/circle_icon.png',
                                   height: 35, width: 35 ,),
                               ),
                               InkWell(
                                 enableFeedback: false,
                                 onTap: (){},
                                 child: Image.asset('assets/images/circle_icon_2.png',
                                   height: 35, width: 35 ,),
                               ),
                               InkWell(
                                 enableFeedback: false,
                                 onTap: (){},
                                 child: Image.asset('assets/images/circle_icon_3.png',
                                   height: 35, width: 35 ,),
                               ),
                               SizedBox(height: 7,),
                             ],
                           ),
                         ),
                       ),
                   ),
                 ],
               ),
              ),
              SizedBox(height: 25,),
              Container(
                alignment: Alignment.topLeft,
                child: Text(widget.name ,style: TextStyle(
                  fontSize: 25,
                  color: Colors.black
                ),),
              ),
              SizedBox(height: 17,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 6,
                    child: Text(widget.price, style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                 Expanded(
                   flex: 1,
                   child: Container(
                     height: 36,
                     width: 40,
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
                 ),
                  SizedBox(width:25 ,),
                  Expanded(
                    flex: 1,
                    child: Text("01" , style: TextStyle(
                      color: Colors.black54,
                      fontSize: 22
                    ),)
                  ),
                  SizedBox(width:20,),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 36,
                      width: 40,
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
                  ),
                  SizedBox(width:23),
                ],
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return reviewpage(
                          image : image , name: name , price: price
                      );
                    })
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star ,size: 25, color: Colors.yellow,),
                    SizedBox(width: 7),
                    Text("4.5" , style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(width: 17,),
                    Text("(50 reviews)" , style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 13),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text("Nice Furniture with good delivery. The delivery time is very fast. Then products look like "
                    "exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price" ,
                style: TextStyle(
                    color: Colors.black54,
                  fontSize: 15,
                ),),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 60,
                      width: 60,
                      child: IconButton(
                        icon:  Icon(Icons.bookmark_border,
                            color: Colors.black, size: 30),
                        onPressed: () {
                          Navigator.push(
                            context,
                          MaterialPageRoute(builder: (context){
                            return favoritepage();
                          })
                          );
                        },
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color:Colors.black12,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    flex: 4,
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
                            "Add to cart",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(7.0))),
                      ),
                    ),
                  ),
                  SizedBox(width: 19,),
                ],

              )
            ],
          ),
        ),
      )
    );
  }
}
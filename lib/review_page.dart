import 'package:ecommerce_app_ui_kite/product_page.dart';
import 'package:flutter/material.dart';

class reviewpage extends StatefulWidget {
  late final image;
  late final price;
  late final name;
  reviewpage({
    this.image,
    this.price,
    this.name,
  });
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return reviewpagestate();
  }
}

class reviewpagestate extends State<reviewpage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 40, bottom: 15),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
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
                    "Rating & Review",
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
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 15, bottom: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image(
                        height: 125,
                        width: 125,
                        fit: BoxFit.fill,
                        image: NetworkImage(widget.image),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 25,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "10 reviews",
                            style: TextStyle(
                              fontSize: 21,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 3, right: 5, top: 5),
                child: Image(
                  image: AssetImage('assets/images/Property.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 3, right: 5),
                child: Image(
                  image: AssetImage('assets/images/Property.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18 ,right: 19),
                child: InkWell(
                  onTap: (){
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context){
                    //       return congratspage();
                    //     })
                    // );
                  },
                  child: Container(
                    // width: 230,
                    height: 55,
                    padding: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Write a review",
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

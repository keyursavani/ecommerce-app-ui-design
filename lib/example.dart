import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class example extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return examplestate();
  }
}

class examplestate extends State<example> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
// 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS6dkr_dCObY5Tde69xhTKcr7pRI0dJ1XHnQ&usqp=CAU'
                    'https://mysleepyhead.com/media/catalog/product/cache/208fb0ae1c70eca4ffa059c65c5c5342/s/l/sleepyhead_yolo_left_hand_side_sofa_blue_7.jpg'
// 'https://cdnext.fynd.com/image/data/Westelm/28062022img/7543626_1.jpg?width=1400&height=1240&mode=fill&fill=solid&fill-color=FFFFFF'
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30, top: 80),
                  child: Text(
                    "MAKE YOUR\nHOME BEAUTIFUL",
                    style: TextStyle(
                      fontSize:27,
                      fontWeight: FontWeight.bold,
                    ),
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 30),
// alignment: Alignment.center,
                  child: Text(
                    "The best simple place where you discover\nmost wounderful furnitures and make your\nhome beautiful",
                    style: TextStyle(
                      color:Colors.black54,
                      fontSize: 16,
                    ),
// maxLines: 3,
// overflow: TextOverflow.ellipsis,
                  ),
                ),

// Container(
//   padding: const EdgeInsets.only(top: 70),
//   child: Align(
//       alignment: Alignment.center,
//       child: ElevatedButton(
//         onPressed: () {},
//         child: Text("Get Started"),
//         style: ElevatedButton.styleFrom(
//           textStyle: TextStyle(fontSize: 20, color: Colors.white),
//           backgroundColor: Colors.black54,
//         ),
//       )),
// ),
                Padding(
                  padding: const EdgeInsets.only(top: 365, bottom: 20 , left: 30 ,right: 33),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return loginscreen();
                            })
                        );
                      },
                      child: Container(
// width: 230,
                        height: 45,
                        padding: const EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Get Started",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(4.0))),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ));

  }
}






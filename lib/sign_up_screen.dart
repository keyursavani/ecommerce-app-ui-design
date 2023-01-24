import 'package:ecommerce_app_ui_kite/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signupscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return signupscreenstate();
  }
}
class signupscreenstate extends State<signupscreen>{

  Color  cursorColor = Colors.black45;

 final  ebableborder = OutlineInputBorder(
   borderRadius: BorderRadius.all(Radius.circular(0),),
   borderSide: BorderSide(color: Colors.black54 , width: 0.5),
 );

 final lablestyle = TextStyle(
     color: Colors.black54
 );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 70 , left: 10 , right: 10 ,bottom: 10),
          // alignment: Alignment.topCenter,
          child: Column(
            children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("--------------" , style: TextStyle(
                     fontSize: 30,
                     color: Colors.black54
                 ),),
                 SizedBox(width: 10,),
                 Container(
                   alignment: Alignment.topCenter,
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.black26,
                     image: DecorationImage(
                         image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3Vezn5UnJCL9xf69xDJKVyAEh0VU2SN11tQ&usqp=CAU'),
                         fit: BoxFit.fill
                     ),
                   ),
                 ),
                 SizedBox(width: 10,),
                 Text("--------------" , style: TextStyle(
                     fontSize: 30,
                     color: Colors.black54
                 ),),
               ],
             ),
              SizedBox(height: 25,),
              Text("WELCOME" , style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 26,),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 12, right: 12 , bottom: 10),
                height: 500,
                child: Card(
                  elevation: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding:const EdgeInsets.only(left: 25 , right: 25 ,top: 37),
                        child: TextFormField(
                          cursorColor: cursorColor,
                          decoration: InputDecoration(
                            enabledBorder: ebableborder,
                            border:  ebableborder,
                            focusedBorder:  ebableborder,
                            labelText: 'Name',
                            labelStyle: lablestyle,
                          ),
                        ),
                      ),
                      Padding(
                        padding:const EdgeInsets.only(left: 25 , right: 25 ,top: 21),
                        child: TextFormField(
                          cursorColor: cursorColor,
                          decoration: InputDecoration(
                              enabledBorder: ebableborder,
                              border: ebableborder,
                              focusedBorder: ebableborder,
                              labelText: 'Email',
                              labelStyle: lablestyle,
                          ),
                        ),
                      ),
                      Padding(
                        padding:const EdgeInsets.only(left: 25 , right: 25 ,top: 21),
                        child: TextFormField(
                          obscureText: true,
                          cursorColor: cursorColor,
                          decoration: InputDecoration(
                              enabledBorder: ebableborder,
                              border: ebableborder,
                              focusedBorder:ebableborder,
                              labelText: 'Password',
                              labelStyle:lablestyle,
                          ),
                        ),
                      ),
                      Padding(
                        padding:const EdgeInsets.only(left: 25 , right: 25 ,top: 21),
                        child: TextFormField(
                          obscureText: true,
                          cursorColor: cursorColor,
                          decoration: InputDecoration(
                              enabledBorder: ebableborder,
                              border: ebableborder,
                              focusedBorder: ebableborder,
                              labelText: 'Confirm Password',
                              labelStyle: lablestyle,
                          ),
                        ),
                      ),
                      SizedBox(height: 21,),
                      Padding(
                        padding: const EdgeInsets.only( left: 25 ,right: 25),
                        child: Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: (){
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
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("Sign Up", style:  TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have account?" , style:  TextStyle(
                            color: Colors.black54
                          ),),
                          TextButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context){
                                  return loginscreen();
                                })
                              );
                            },
                            child: Text("Log in",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),),
                          ),
                        ],
                      ),

                    ],
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
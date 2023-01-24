import 'package:ecommerce_app_ui_kite/home_page.dart';
import 'package:ecommerce_app_ui_kite/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return loginscreenstate();
  }
}
class loginscreenstate extends State<loginscreen>{

  TextStyle textbuttonstyle = TextStyle(
      fontSize: 17,
      color: Colors.black54
  );

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
         alignment: Alignment.topCenter,
         padding: const EdgeInsets.only(top: 70 , left: 10 , right: 10 ,bottom: 10),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children:<Widget> [
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
                 Text("--------------" ,style: TextStyle(
                     fontSize: 30,
                   color: Colors.black54
                 ),),
               ],
             ),
             SizedBox(height: 18,),
             Text("Hello!" , style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.w400,
             ),),
             SizedBox(height: 7,),
             Text("WELCOME BACK" , style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.bold,
             ),),
             SizedBox(height: 26,),
             Container(
               alignment: Alignment.center,
               padding: const EdgeInsets.only(left: 12, right: 12  ),
               height: 415,
               child: Card(
                 elevation: 3,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 48 , left: 25 ,right: 25),
                       child: TextFormField(
                         cursorColor: cursorColor,
                         decoration: InputDecoration(
                           enabledBorder: ebableborder,
                           border: ebableborder,
                           focusedBorder:ebableborder,
                           labelText: 'Email',
                           labelStyle: lablestyle,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 25 , left: 25 ,right: 25 ,bottom: 3),
                       child: TextFormField(
                         obscureText: true,
                         cursorColor: cursorColor,
                         decoration: InputDecoration(
                           enabledBorder: ebableborder,
                           border: ebableborder,
                           focusedBorder: ebableborder,
                           labelText: 'Password',
                           labelStyle: lablestyle,
                         ),
                       ),
                     ),
                     TextButton(
                         child: Text("Forgot Pasword",
                             style: textbuttonstyle,
                         ),
                       onPressed: (){},
                     ),
                     SizedBox(height: 3),
                     Padding(
                       padding: const EdgeInsets.only( bottom: 5, left: 25 ,right: 25),
                       child: Align(
                         alignment: Alignment.center,
                         child: GestureDetector(
                           onTap: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context){
                                 return homepage();
                               })
                             );
                           },
                           child: Container(
                             // width: 250,
                             height: 45,
                             child: Padding(
                               padding: const EdgeInsets.all(10),
                               child: Align(
                                 alignment: Alignment.center,
                                 child: Text("Log in", style: TextStyle(
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
                     // SizedBox(height: 4,),
                     TextButton(
                         child: Text("Sign up" ,
                             style: textbuttonstyle,
                         ),
                       onPressed: (){
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context){
                             return signupscreen();
                           }),
                         );
                       },
                     ),
                   ],
                 ),
               ),
             ),
           ],
         ),
       ),
     )
   );
  }
}
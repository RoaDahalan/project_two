import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
   Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
     double screenWidth = MediaQuery.of(context).size.width;

     return MaterialApp(
       home: Scaffold(
         backgroundColor: Color(0xFFBCAAA4),
         appBar: AppBar(
           backgroundColor: Color(0xFF80CBC4),
           toolbarHeight: 70,

           leading: IconButton(
             icon: Container(
                 height: 57,
                 width: 57,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   color: Color(0xFFB2DFDB),
                 ),
                 child: Icon(Icons.arrow_back_ios_new , size: 35,)),
             onPressed: () {},
           ),
           actions: [
             IconButton(
               icon: Icon(Icons.menu_outlined , size: 40,),
               onPressed: () {},
             ),
           ],
         ),
         body: SafeArea(
             child: Padding(
               padding: const EdgeInsets.only(top: 117),
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center ,
                     children: [
                       Container(
                         height: 200,
                         width: 200,
                         decoration: BoxDecoration(
                           image: DecorationImage(image:
                           NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPxX3yfTeEJw290MYNSwKgc213Xuv5bSSLuw&s") , fit: BoxFit.cover ,
                           ) , shape: BoxShape.circle ,
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey , blurRadius: 40, offset: Offset(-15, -15) ,
                             ),
                             BoxShadow(
                                 color: Colors.grey , blurRadius: 40, offset: Offset(15, 15) ,
                               ),
                             ]
                         ),

                       ),
                     ],
                   ),
                   SizedBox(height: 20,) ,
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Tut Elimi" , style: TextStyle(fontSize: 30 , fontStyle: FontStyle.italic), ),
                       Text("Turkish Song" , style: TextStyle(fontSize: 15 ,),),
                     ],
                   ),
                   ////////////
                   SizedBox(height: 50,) ,

                   Slider(
                     value: 8,
                     min: 0,
                     max: 10,
                     divisions: 10,
                     activeColor: Color(0xFF80CBC4),
                     inactiveColor: Colors.grey[400],
                     onChanged: (value) {},
                   ),
                   /////////////
                   SizedBox(height: 50,) ,
                   //////////////////////////
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,

                     children: [
                       Container(
                         height: 80,
                         width: 80,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle ,
                           color: Color(0xFFBDBDBD) ,
                         ),
                        child:  Icon(
                           Icons.fast_rewind ,
                            size: 75,
                         ) ,
                       ) ,
                       Container(
                         height: 80,
                         width: 80,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle ,
                           color: Color(0xFF80CBC4) ,
                         ),
                         child:  Icon(
                           Icons.pause ,
                           size: 75,
                         ) ,
                       ) ,
                       Container(
                         height: 80,
                         width: 80,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle ,
                           color: Color(0xFFBDBDBD) ,
                         ),
                         child:  Icon(
                           Icons.fast_forward  ,
                           size: 75,
                         ) ,
                       ) ,

                     ],
                   )
                 ],
               ),
             ),
           ),
         ),
     );
   }
}





// Column(
// children: [
// // توسيط أفقي فقط (وسط الشاشة من محور X)
// Padding(
// padding: const EdgeInsets.only(top: 120),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Container(
// // margin: EdgeInsets.all(7) ,
// height: screenHeight * 0.27,
// width: screenWidth * 0.91,
// decoration: BoxDecoration(
// color: Colors.white60,
// borderRadius: BorderRadius.circular(13),
// border: Border.all(width: 3),
// ),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Expanded(child: Column(
// children: [
// Icon(Icons.person ,
// size: 80),
//
// ],
// )),
// Expanded(child: Column(
// // mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text("Flutter McFlutter" , style: TextStyle(fontSize: 22),),
// Text("Computer App Developer" , style: TextStyle(fontSize: 13),),
// ],
// )),
// ],
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Text("data"),
// Text("data"),
//
// ],
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Icon(Icons.person ,
// size: 40),
// Icon(Icons.person ,
// size: 40),
// Icon(Icons.person ,
// size: 40),
// Icon(Icons.person ,
// size: 40),
// ],
//
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// ],
// ),



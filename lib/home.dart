import 'package:flutter/material.dart';
import 'package:lungsound_detectorapp/homeone.dart';
 

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
         children: [
           Image.asset('assets/img/home.png',
             width: MediaQuery.of(context).size.width,
             fit: BoxFit.cover,
           ),
           Center(
             child: ListView(
               scrollDirection: Axis.vertical,
               children: <Widget>[
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     SizedBox(width: 20,),
                     InkResponse(
                         onTap: (){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) =>Home_one()),
                           );
                         },
                         child: Icon(Icons.arrow_back_ios_rounded,color: Colors.black54,size: 40,)),
                   ],
                 ),
                 Image.asset('assets/img/Lungs.png',
                   height: 97,
                   width: 97,
                 ),
                 const Center(
                   child: Text(
                     'Lung sound',
                     style: TextStyle(
                         fontSize: 32,
                         fontWeight: FontWeight.bold,
                         color: Colors.white),
                   ),
                 ),
                 const Center(
                   child: Text(
                     'Detector',
                     style: TextStyle(
                         fontSize: 32,
                         fontWeight: FontWeight.w300,
                         color: Colors.white),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(15),
                   child: Container(
                     height: 290,
                     width: 300,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(15),
                     ),
                     child: Column(
                       children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                             height: 110,
                             width: double.infinity,
                             decoration: BoxDecoration(
                               color: Colors.grey,
                               borderRadius: BorderRadius.circular(15),
                             ),
                         ),
                          ),
                         SizedBox(height: 10,),
                         InkResponse(
                           hoverColor: Colors.blue,
                           highlightColor: Colors.blue,
                           onTap: (){

                           },
                           child: Container(
                             height: 53,
                             width: 202,
                             decoration: BoxDecoration(
                               gradient: LinearGradient(
                                 begin: Alignment.topLeft,
                                 end: Alignment.bottomRight,
                                 colors: [Color(0xff27A3E9), Color(0xff28FFA5)],
                               ),
                               borderRadius: BorderRadius.circular(28),
                               boxShadow: const [
                                 BoxShadow(
                                   color: Colors.black54,
                                   blurRadius: 4.0,
                                   spreadRadius: 1.5,
                                   offset: Offset(
                                     3,
                                     3,
                                   ),
                                 ),
                               ],
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: const [
                                 Icon(Icons.cloud_upload_outlined,size: 35,),
                                 SizedBox(width: 20,),
                                 Text('Uplode File',
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 17,
                                   ),
                                 ),

                               ],
                             ),
                           ),
                         ),
                         SizedBox(height: 10,),
                         Padding(
                           padding: const EdgeInsets.all(10),
                           child: InkResponse(
                             hoverColor: Colors.blue,
                             highlightColor: Colors.blue,
                             onTap: (){

                             },
                             child: Container(
                               height: 53,
                               width:double.infinity,
                               decoration: BoxDecoration(
                                 gradient: LinearGradient(
                                   begin: Alignment.topLeft,
                                   end: Alignment.bottomRight,
                                   colors: [Color(0xff27A3E9), Color(0xff28FFA5)],
                                 ),
                                 borderRadius: BorderRadius.circular(28),
                                 boxShadow: const [
                                   BoxShadow(
                                     color: Colors.black54,
                                     blurRadius: 4.0,
                                     spreadRadius: 1.5,
                                     offset: Offset(
                                       3,
                                       3,
                                     ),
                                   ),
                                 ],
                               ),
                               child:  const Center(
                                 child: Text('Get Resalt',
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 20,
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ),

                       ],
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(15),
                   child: Container(
                     height: 480,
                     width: 300,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(15),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         SizedBox(height: 10,),
                         Padding(
                           padding: const EdgeInsets.all(10),
                           child: Container(
                             height: 53,
                             width:double.infinity,
                             decoration: BoxDecoration(
                               color: Color(0xAB99EABE),
                               borderRadius: BorderRadius.circular(28),
                             ),

                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(10),
                           child: Container(
                             height: 53,
                             width:double.infinity,
                             decoration: BoxDecoration(
                               color:Color(0x99A9EAE3),
                               borderRadius: BorderRadius.circular(28),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.only(left: 30),
                               child: TextField(
                                 decoration: InputDecoration(
                                   border: InputBorder.none,
                                   fillColor: Colors.black54,
                                   hintText: "Doctor’s Name",
                                   hintStyle:
                                   TextStyle(fontWeight: FontWeight.w400, fontSize: 19),
                                 ),
                               ),
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(10),
                           child: Container(
                             height: 53,
                             width:double.infinity,
                             decoration: BoxDecoration(
                               color: Color(0x99A9EAE3),
                               borderRadius: BorderRadius.circular(28),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.only(left: 30),
                               child: TextField(
                                 decoration: InputDecoration(
                                   border: InputBorder.none,
                                   fillColor: Colors.black54,
                                   hintText: "Patient’s Name",
                                   hintStyle:
                                   TextStyle(fontWeight: FontWeight.w400, fontSize: 19),
                                 ),
                               ),
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(10),
                           child: Container(
                             height: 53,
                             width:double.infinity,
                             decoration: BoxDecoration(
                               color: Color(0x99A9EAE3),
                               borderRadius: BorderRadius.circular(28),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.only(left: 30),
                               child: TextField(
                                 decoration: InputDecoration(
                                   border: InputBorder.none,
                                   fillColor: Colors.black54,
                                   hintText: "Date of Test",
                                   hintStyle:
                                   TextStyle(fontWeight: FontWeight.w400, fontSize: 19),
                                 ),
                               ),
                             ),
                           ),
                         ),


                         SizedBox(height: 10,),
                         Padding(
                           padding: const EdgeInsets.all(10),
                           child: InkResponse(
                             hoverColor: Colors.blue,
                             highlightColor: Colors.blue,
                             onTap: (){

                             },
                             child: Container(
                               height: 53,
                               width:double.infinity,
                               decoration: BoxDecoration(
                                 gradient: LinearGradient(
                                   begin: Alignment.topLeft,
                                   end: Alignment.bottomRight,
                                   colors: [Color(0xff27A3E9), Color(0xff28FFA5)],
                                 ),
                                 borderRadius: BorderRadius.circular(28),
                                 boxShadow: const [
                                   BoxShadow(
                                     color: Colors.black54,
                                     blurRadius: 4.0,
                                     spreadRadius: 1.5,
                                     offset: Offset(
                                       3,
                                       3,
                                     ),
                                   ),
                                 ],
                               ),
                               child:  const Center(
                                 child: Text('Save Resalt',
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 20,
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ),

                       ],
                     ),
                   ),
                 ),

               ],
             ),
           ),
         ],
       ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lungsound_detectorapp/home.dart';
import 'package:lungsound_detectorapp/homepages/crackles.dart';
import 'package:lungsound_detectorapp/pages.dart';

class Home_one extends StatefulWidget {
  const Home_one({Key? key}) : super(key: key);

  @override
  _Home_oneState createState() => _Home_oneState();
}

class _Home_oneState extends State<Home_one> {
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
                Image.asset('assets/img/Lungs.png',
                  height: 97,
                  width: 97,
                ),
                Center(
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
              padding:  EdgeInsets.all(15),
              child: Container(
                height: 360,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text(
                      ' Lung Sound Identify \n              Model',
                      style: TextStyle(

                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(height: 20,),
                    Image.asset('assets/img/model.png',
                      height: 150,
                      width: 150,
                    ),
                    SizedBox(height: 30,),
                    Flexible(
                      flex: 0,
                      child: InkResponse(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>Home(), ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50,right: 50),
                          child: Container(
                            height: 51,
                            width: 202,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xff27A3E9), Color(0xff28FFA5)],
                              ),
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
                            child: Center(
                              child: Text(
                                'Visit Here',
                                style: TextStyle(fontSize: 22, color: Colors.black, ),
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
                  padding:  EdgeInsets.all(15),
                  child: Container(
                    height: 360,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Text(
                          ' About Lung Diseases',
                          style: TextStyle(

                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(height: 20,),
                        Image.asset('assets/img/dieses.png',
                          height: 170,
                          width: 190,

                        ),
                        SizedBox(height: 30,),
                        Flexible(
                          flex: 0,
                          child: InkResponse(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>Crackele()),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50,right: 50),
                              child: Container(
                                height: 51,
                                width: 202,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Color(0xff27A3E9), Color(0xff28FFA5)],
                                  ),
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
                                child: Center(
                                  child: Text(
                                    'Visit Here',
                                    style: TextStyle(fontSize: 22, color: Colors.black, ),
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

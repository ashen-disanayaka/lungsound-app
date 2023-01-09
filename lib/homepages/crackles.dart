import 'package:flutter/material.dart';
import 'package:lungsound_detectorapp/homeone.dart';
import 'package:lungsound_detectorapp/homepages/whees.dart';

class Crackele extends StatefulWidget {
  const Crackele({Key? key}) : super(key: key);

  @override
  _CrackeleState createState() => _CrackeleState();
}

class _CrackeleState extends State<Crackele> {
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
                height: 780,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Container(

                      height: 190,
                      width: 340,
                      child: Image.asset('assets/img/cra.png'),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Center(
                        child: Expanded(
                          child: Column(
                            children: [
                              Text(
                                'This is a series of short, explosive sounds. They can also sound like bubbling, rattling, or clicking. You’re more likely to have them when you breathe in, but they can happen when you breathe out, too.You can have fine crackles, which are shorter and higher in pitch, or coarse crackles, which are lower. Either can be a sign that there’s fluid in your air sacs.    \n \n           Crackles are fine noises heard by ausculatation at end of an inspiration .',
                                style: TextStyle(
                                    fontSize: 19,
                                    letterSpacing: 1,
                                    wordSpacing: 1,

                                    color: Colors.black),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                'More...',
                                style: TextStyle(
                                    fontSize: 19,

                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
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
                            child: Text('Go to videos',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>Whees(),),
                              );
                            },
                            child: Icon(Icons.navigate_next_rounded,size: 48,)),

                      ],
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

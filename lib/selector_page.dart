import 'package:flutter/material.dart';
import 'package:lungsound_detectorapp/login.dart';
import 'package:lungsound_detectorapp/register.dart';

class Selector_page extends StatelessWidget {
  const Selector_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/img/13 Pro - 4.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Center(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Image.asset('assets/img/Group 4.png',
                  height: 185,
                  width: 185,
                ),
                const Center(
                  child: Text(
                    'LUNG SOUND',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const Center(
                  child: Text(
                    'DETECTOR',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: 90,),
                Flexible(
                  flex: 0,
                  child: InkResponse(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>Login() ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 110,right: 110),
                      child: Container(
                        height: 48,
                        width: 157,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
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
                            'LogIn',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Flexible(
                  flex: 0,
                  child: InkResponse(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>Register() ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80,right: 80),
                      child: Container(
                        height: 48,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
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
                            'Register',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
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

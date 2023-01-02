import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lungsound_detectorapp/home.dart';
import 'package:lungsound_detectorapp/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

Color color1 = Colors.blue;
Color color2 = Colors.green;

// Interpolate between color1 and color2 with a fraction of 0.5
Color? mixedColor = Color.lerp(color1, color2, 0.8);

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: Image.asset(
                  'assets/img/Group 12.png',
                  width: 61,
                  height: 63,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Center(
                child: const Text(
                  'SIGN IN',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              Center(
                child: const Text(
                  'TO CONTINUE',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 57,
                width: 305,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(25)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.black54,
                      hintText: "User Name",
                      hintStyle:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 57,
                width: 305,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(25)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.black54,
                      hintText: "Password",
                      hintStyle:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Flexible(
                flex: 0,
                child: InkResponse(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Home() ),
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
                          'LogIn',
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

               TextButton(
                 onPressed: () {

                 },
                 child: const Text(
                   'Lost password?',
                   style: TextStyle(
                     color: Colors.black54,
                     fontSize: 18,
                   ),
                 ),
               ),
              SizedBox(height: 190,),
                Padding(
                  padding: const EdgeInsets.only(left: 50,right: 50),
                  child: Container(
                    height: 3.2,
                    width: 113,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),

               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    'Don’t have an account?',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>Register() ),
                      );
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

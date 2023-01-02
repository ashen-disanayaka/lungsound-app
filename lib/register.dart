import 'package:flutter/material.dart';
import 'package:lungsound_detectorapp/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,top: 30,bottom: 10),
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
                  'SIGN UP',
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
                height: 40,
              ),
              Container(
                height: 57,
                width: 305,
                decoration: BoxDecoration(
                    color: Colors.black12, borderRadius: BorderRadius.circular(25)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20 ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.black54,
                      hintText: "Doctor Name",
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
                    color: Colors.black12, borderRadius: BorderRadius.circular(25)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20 ),
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
                    color: Colors.black12, borderRadius: BorderRadius.circular(25)),
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
               Flexible(
                 child: SizedBox(
                  height: 25,
              ),
               ),
              Flexible(
                flex: 0,
                child: Container(
                  height: 57,
                  width: 305,
                  decoration: BoxDecoration(
                      color: Colors.black12, borderRadius: BorderRadius.circular(25)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.black54,
                        hintText: "Conform Password",
                        hintStyle:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  height: 25,
                ),
              ),
              Flexible(
                child: InkResponse(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Login() ),
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
                      child: const Center(
                        child: Text(
                          'Register',
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
               height: 6,
              ),
             SizedBox(height: 110,),
              Padding(
                padding: const EdgeInsets.only(left: 60,right: 60),
                child: Container(
                  height: 3.2,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.green, borderRadius: BorderRadius.circular(10)),

                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

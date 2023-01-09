import 'package:flutter/material.dart';
import 'package:lungsound_detectorapp/homeone.dart';
import 'package:lungsound_detectorapp/homepages/asethma.dart';
import 'package:lungsound_detectorapp/homepages/crackles.dart';

class Pages extends StatefulWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
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
                Crackele(),



              ],
            ),
          ),
        ],
      ),
    );
  }
}

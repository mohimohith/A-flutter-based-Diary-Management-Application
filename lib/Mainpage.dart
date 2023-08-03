import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';


class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          SizedBox(height: 75),

          Container(

            height:deviceHeight*0.22,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage:AssetImage('assets/images/img_2.png'),
                  radius:140,
                ),
              ],
            ),

          ),
          Container(
            height: deviceHeight*0.1,
            width: deviceWidth,
            child: Center(
                child: Text("M-Lands",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 2.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),],),)
            ),
          ),
          SizedBox(height:60),


          Padding(
            padding: const EdgeInsets.only(left:25, right:25),
            child: Container(
              height:deviceHeight*0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffb7b7b7).withOpacity(0.4),
              ),
              child: Padding(
                padding:  EdgeInsets.only(left:30),
                child: TextField(
                  decoration:InputDecoration(
                    border:InputBorder.none,
                    hintText:'Password',

                  ),
                ),
              ),
            ),
          ),

          SizedBox(height:40),

          Padding(
            padding: const EdgeInsets.only(left:22, right:22),
            child: Container(
              height:deviceHeight*0.06,
              width:deviceWidth,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(15),

              ),
              margin:EdgeInsets.only(
                top:deviceHeight*0.003,

              ),
              child:ElevatedButton(
                onPressed: (){

                },

                child:Text(
                  'Login',
                  style:TextStyle(
                    fontSize:20,
                    fontWeight:FontWeight.bold,
                  ),
                ),
                style:ElevatedButton.styleFrom(
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),


        ],
      )),
    );
  }
}

import 'package:carbon_icons/carbon_icons.dart';
import 'package:device_preview/device_preview.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media_query/Model.dart';
import 'package:unicons/unicons.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Home(),));
}

// void main() => runApp(
//       DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) => Home(), // Wrap your app
//       ),
//     );

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Model().getDimens(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              SizedBox(
                height: Model.screen_height*0.010,
              ),
              Row(
                children: [
                  IconButton(onPressed: () {

                  }, icon: Icon(EvaIcons.menu2)),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Anything Else ...!",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Model.screen_height*0.010,
              ),

              Container(
                width: Model.screen_width*0.5,
                height: Model.screen_height*0.06,
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xffc0c0c0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  controller: name,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(letterSpacing: 1),
                    prefixIcon: Icon(EvaIcons.searchOutline,color: Colors.black,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

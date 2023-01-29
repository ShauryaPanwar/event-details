import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:event_details/utils/spaces.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    var isdark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      backgroundColor: Colors.blueGrey,

      appBar: AppBar(

        foregroundColor: Colors.black,
        title: Text(" Profile "),
        centerTitle: true,
        toolbarHeight: 40,
        toolbarOpacity: 1,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
          )
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 5,
        leading: IconButton(onPressed: (){},icon: const Icon(LineAwesomeIcons.angle_left),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(isdark? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
        ],
      ),
      

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              verticalspacing(11),
              GestureDetector(
                onTap: (){
                  //take image from gallery
                },
                child: Center(
                  child: CircleAvatar(

                    radius: MediaQuery.of(context).size.width*0.20,
                    backgroundColor: Colors.white38,
                    child:

                    Icon(
                      Icons.add_photo_alternate,
                      size: MediaQuery.of(context).size.width * 0.20,
                    ),

                  ),
                ),
              )
            ],
          ),
        ),
      )
    );


  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blur/blur.dart';

class CardEvent extends StatelessWidget {
  final String Date;
  final String event_name;
  final AssetImage image;

  const CardEvent(
      {Key? key,
      required this.Date,
      required this.event_name,
        required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black12,
      clipBehavior: Clip.antiAlias,  
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.256,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black38, Colors.black12],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(Colors.grey, BlendMode.saturation),
                  fit: BoxFit.cover,
                  image: image)
          ),
          child: Material(
            child: InkWell(
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Text("$Date",
                        style: GoogleFonts.lato(
                            color: Colors.white, fontSize: 50)),
                    Text('$event_name',
                        style: GoogleFonts.lato(
                            color: Colors.white, fontSize: 20)),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Join Event',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
    );
  }
}

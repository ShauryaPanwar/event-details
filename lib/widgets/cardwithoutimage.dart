

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cardnoimg extends StatelessWidget {
  const Cardnoimg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black12,
      clipBehavior: Clip.antiAlias,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.256,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0x232A2A).withOpacity(0.368), Color(0x2B2926).withOpacity(0.2),Colors.grey.withOpacity(0.01)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(5.0)),
          child: Material(
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/event');

              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("18 March",
                        style: GoogleFonts.lato(
                            color: Colors.white, fontSize: 50)),
                    Text('Social Work',
                        style: GoogleFonts.lato(
                            color: Colors.white, fontSize: 20)),
                    TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered))
                                  return Colors.blue;
                                return Colors
                                    .purpleAccent;
                              }),
                        ),
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'Join Event',
                            style: TextStyle(color: Colors.white.withOpacity(0.8)),
                          ),
                        )
                    )
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

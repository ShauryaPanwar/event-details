import 'dart:ui';

import 'package:event_details/utils/spaces.dart';
import 'package:event_details/widgets/cardwithoutimage.dart';
import 'package:event_details/widgets/event_card.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

int _selectedindex = 0;

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/dices.jpeg'), fit: BoxFit.cover)),
            padding: EdgeInsets.all(10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  verticalspacing(11),
                  TextField(
                    style: GoogleFonts.adventPro(fontWeight: FontWeight.w800),
                    decoration: InputDecoration(
                        icon: Icon(LineAwesomeIcons.search),
                        hintText: "Search",
                        contentPadding: EdgeInsets.all(5),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        )),
                    // cursorColor: Colors.lightBlueAccent,
                  ),
                  verticalspacing(11),
                  CardEvent(Date: "14 Feb", event_name: " Party Event", image: AssetImage('assets/drinksblur.png')),
                  verticalspacing(11),
                  Cardnoimg(),
                  verticalspacing(11),
                  CardEvent(Date: "23 May", event_name: "Birthday Event", image: AssetImage('assets/PartyBlur.png')),
                  verticalspacing(11),
                  Cardnoimg(),
                ]
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 9,
              currentIndex: _selectedindex,
              backgroundColor: Colors.deepPurple,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white.withOpacity(.60),
              selectedFontSize: 16,
              unselectedFontSize: 14,
              onTap: (value) {
                setState(() {
                  _selectedindex = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                  label: 'Favourites',
                  icon: Icon(Icons.favorite),
                ),
                BottomNavigationBarItem(
                  label: 'Music',
                  icon: Icon(Icons.music_note),
                ),
                BottomNavigationBarItem(
                  label: 'Places',
                  icon: Icon(Icons.location_on),
                ),
                BottomNavigationBarItem(
                  label: 'News',
                  icon: Icon(Icons.library_books),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

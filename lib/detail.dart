import 'package:event_details/utils/spaces.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';


class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

int _selectedindex=0;



class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
          foregroundColor: Colors.white,
          title: Text(" Event Details ",) ,
          centerTitle: true,
          toolbarHeight: 45,
          toolbarOpacity: 1,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          backgroundColor: Colors.deepPurple,
          elevation: 9,
          leading: IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(LineAwesomeIcons.angle_left),
          ),
          actions: [

          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                verticalspacing(11),


              ],
            ),
          ),
        ),





        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )
          ),
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
              onTap: (value){
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

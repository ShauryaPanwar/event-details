import 'dart:io';
import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:event_details/utils/spaces.dart';
import 'package:numberpicker/numberpicker.dart';

import 'formatter/uppercase.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFile = false;
  XFile? fileimage;
  final ImagePicker imagePicker = ImagePicker();

  getImageFromGallery() async {
    fileimage = await imagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      fileimage;
    });
  }








  TextEditingController _date = TextEditingController();
  TextEditingController _adhar = TextEditingController();
  TextEditingController _pan = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _add1 = TextEditingController();
  TextEditingController _add2 = TextEditingController();





  @override
  Widget build(BuildContext context) {
    var isdark = MediaQuery
        .of(context)
        .platformBrightness == Brightness.dark;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            foregroundColor: Colors.black,
            title: Text(" Profile "),
            centerTitle: true,
            toolbarHeight: 45,
            toolbarOpacity: 1,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            backgroundColor: Colors.deepPurple,
            elevation: 5,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(LineAwesomeIcons.angle_left),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon:
                  Icon(isdark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  verticalspacing(11),
                  GestureDetector(
                    onTap: () {
                      //take image from gallery
                      getImageFromGallery();
                    },
                    child: Center(
                      child: CircleAvatar(
                        radius: MediaQuery
                            .of(context)
                            .size
                            .width * 0.20,
                        backgroundColor: Colors.blueGrey,
                        backgroundImage: fileimage == null
                            ? null
                            : FileImage(File(fileimage!.path)),
                        child: fileimage == null
                            ? Icon(
                          Icons.add_photo_alternate,
                          size: MediaQuery
                              .of(context)
                              .size
                              .width * 0.20,
                        )
                            : null,
                      ),
                    ),
                  ),
                  verticalspacing(11),
                  Text('fake-user',
                      style: GoogleFonts.sacramento(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 30))),
                  verticalspacing(11),
                  Text('Enter other Information',
                      style: GoogleFonts.sacramento(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 30))),
                  verticalspacing(7),
                  const Divider(indent: 20, endIndent: 20, thickness: 1.2,),
                  verticalspacing(7),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              label: Text("Email"),
                              hintText: "Something@email.com",
                              prefixIcon: Icon(Icons.email_outlined,),
                              border: OutlineInputBorder(),
                            ),

                            controller: _email,
                          ),
                          verticalspacing(20),
                          TextFormField(
                            controller: _add1,
                            decoration: InputDecoration(
                              label: Text("Address Line 1"),
                              prefixIcon: Icon(Icons.location_city,),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          verticalspacing(20),
                          TextFormField(
                            controller: _add2,
                            decoration: InputDecoration(
                              label: Text("Address Line 2"),
                              prefixIcon: Icon(Icons.location_city_outlined,),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          verticalspacing(20),
                          TextFormField(
                            keyboardType: TextInputType.none,
                            controller: _date,
                            decoration: InputDecoration(
                              label: Text("Select Date of Birth"),
                              prefixIcon: Icon(
                                Icons.person_add_alt_1_outlined,),
                              border: OutlineInputBorder(),

                            ),

                            onTap: () async {
                              DateTime? pickdate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime(2000),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2022));
                              if (pickdate != null) {
                                setState(() {
                                  _date.text =
                                      DateFormat('yyyy-MM-dd').format(pickdate);
                                });
                              }
                            },
                          ),
                          verticalspacing(20),
                          TextFormField(
                            controller: _adhar,
                            keyboardType: TextInputType.number,
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            decoration: InputDecoration(
                              hintText: "0000 0000 0000 0000",
                              label: Text("Adhaar Number"),
                              prefixIcon: Icon(Icons.credit_card,),
                              border: OutlineInputBorder(),
                            ),
                            maxLength: 12,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            textCapitalization: TextCapitalization.characters,
                            controller: _pan,
                            inputFormatters: <TextInputFormatter>[ UpperCaseTextFormatter()],
                            decoration: InputDecoration(
                              label: Text("Pan Number"),
                              prefixIcon: Icon(Icons.card_membership_outlined,),
                              border: OutlineInputBorder(),
                            ),
                            maxLength: 10,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            controller: _pan,
                            decoration: InputDecoration(
                              label: Text("Area of Intrest"),
                              prefixIcon: Icon(Icons.interests_rounded,),
                              border: OutlineInputBorder(),
                            ),
                            onTap: (){
                            },
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )

      ),
    );
  }
}

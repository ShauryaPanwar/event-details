import 'package:flutter/material.dart';
import 'package:event_details/utils/logintextfieldstyle.dart';

class Loginwidget extends StatelessWidget {
  final TextEditingController controler;
  final String hinttext;
  final bool aster;
  final FormFieldValidator<String>? validator;

  const Loginwidget(
      {Key? key,
      required this.controler,
      required this.hinttext,
      this.aster = false,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: aster,
      validator: (value){
        if(validator!= null)
          return validator!(value);
      },
      controller: controler,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hinttext,
        hoverColor: Colors.black12,
        hintStyle: themetextstyle.logintextfield,
      ),
    );
  }
}

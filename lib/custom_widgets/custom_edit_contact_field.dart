import 'package:flutter/material.dart';

class CutomEditField extends StatelessWidget {

  final String hinttext;
  final String labeltext;
  final Icon? suffixicon;
  final Icon prefixicon;
  final void Function(String?)? onSaved;
  final bool isNumber;
  final FormFieldValidator<String>? validator;
  final bool isSecure;

  final String? intialText;

  const CutomEditField({super.key, required this.hinttext, required this.labeltext, this.suffixicon, required this.prefixicon, this.onSaved, required this.isNumber, this.validator, required this.isSecure, this.intialText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            initialValue: intialText,
            validator: validator,
            obscureText: isSecure,
            keyboardType: isNumber ? TextInputType.number : TextInputType.text,
            onSaved: onSaved,
            decoration: InputDecoration(
              hintText: hinttext,
              labelText: labeltext,
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: suffixicon,
              suffixIconColor: Colors.black,
              prefixIcon: prefixicon,
              prefixIconColor: Colors.black,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.black),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.red),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

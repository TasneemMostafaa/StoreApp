import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  bool? obscureText;
  CustomTextField({
    this.hintText,
    this.inputType,
    this.onChanged,
    this.obscureText = false,
  });
  Function(String)? onChanged;
  TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    
    return TextField(
      obscureText :obscureText!, 
      keyboardType: inputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        //hintStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),

        ),
        border: OutlineInputBorder(borderSide: BorderSide(),
        borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}

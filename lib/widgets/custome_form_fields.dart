import 'package:flutter/material.dart';

class CustomeFormFields extends StatelessWidget {
  final bool obscureText;
  final String hintText;
final IconData icon;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  const CustomeFormFields({super.key , this.obscureText = false, required this.hintText,required this.icon, this.validator, this.controller,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        obscureText:obscureText ,
        decoration: InputDecoration(hintText: hintText,border:OutlineInputBorder(borderRadius: BorderRadius.circular(15.5)),suffixIcon:Icon(icon,)),
        validator: validator,
        controller: controller,
      ),
    );
  }
}

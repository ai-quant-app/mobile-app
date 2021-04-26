import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class LoginTextFieldWidget extends StatelessWidget {
  final bool obscure;
  final String hintText;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final TextInputType keyboardType;
  final TextEditingController controller;

  LoginTextFieldWidget({
    this.obscure = false,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorWidth: 8.sp,
      style: TextStyle(
        fontSize: 55.sp,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      obscureText: obscure,
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: Color(0xFF074884),
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF1F4364), width: 5.sp),
          borderRadius: BorderRadius.all(Radius.circular(50.sp)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF1F4364), width: 5.sp),
          borderRadius: BorderRadius.all(Radius.circular(50.sp)),
        ),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 50.sp, color: Colors.white),
        prefixIcon: Icon(prefixIcon, color: Colors.white, size: 70.sp),
        suffixIcon: Icon(suffixIcon, color: Colors.white, size: 70.sp),
        fillColor: Color(0xFF1F4364),
        isDense: false,
        filled: true,
      ),
    );
  }
}

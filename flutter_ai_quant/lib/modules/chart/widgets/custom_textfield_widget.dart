import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final bool obscure;
  final IconData icon;
  final TextInputType keyboardType;
  final TextEditingController controller;

  CustomTextFieldWidget({
    this.obscure = false,
    this.icon,
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
          borderSide: BorderSide(color: Color(0xFF405F7B), width: 5.sp),
          borderRadius: BorderRadius.all(Radius.circular(50.sp)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF405F7B), width: 5.sp),
          borderRadius: BorderRadius.all(Radius.circular(50.sp)),
        ),
        prefixIcon: Icon(icon, color: Color(0xFF405F7B), size: 70.sp),
        fillColor: Color(0xFF405F7B),
        isDense: false,
        filled: true,
      ),
    );
  }
}

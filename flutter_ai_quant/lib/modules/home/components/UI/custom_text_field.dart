import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
class LoginTextFieldWidget extends StatelessWidget {
  final bool obscure;
  final String title;
  final IconData icon;
  final TextInputType keyboardType;
  final TextEditingController controller;
  LoginTextFieldWidget({
    this.obscure = false,
    this.title,
    this.icon,
    this.keyboardType,
    this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsResponsive.only(
        left: 50,
        right: 50,
        bottom: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsetsResponsive.only(
              bottom: 20,
            ),
            child: Text(
              title,
              style: GoogleFonts.varelaRound(
                color: Colors.black54,
                fontSize: 50.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            constraints: BoxConstraints(
              maxHeight: 100.sp,
              minHeight: 100.sp,
            ),
            child: TextField(
              cursorWidth: 5.sp,
              style: GoogleFonts.varelaRound(
                fontSize: 55.sp,
              ),
              obscureText: obscure,
              controller: controller,
              keyboardType: keyboardType,
              cursorColor: Colors.lightGreen,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightGreen, width: 5.sp),
                  borderRadius: BorderRadius.all(Radius.circular(25.sp)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[200], width: 5.sp),
                  borderRadius: BorderRadius.all(Radius.circular(25.sp)),
                ),
                prefixIcon: Icon(icon, color: Colors.lightGreen, size: 70.sp),
                fillColor: Colors.white,
                isDense: false,
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
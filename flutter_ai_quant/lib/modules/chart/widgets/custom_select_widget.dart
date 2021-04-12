import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

//https://stackoverflow.com/questions/60945169/remove-empty-space-between-text-and-trailer-icon-of-dropdownbutton
class CustomSelectWidget extends StatelessWidget {
  final List<String> list;
  final String selected;
  final handleSelect;

  CustomSelectWidget({
    this.list,
    this.selected,
    this.handleSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsResponsive.only(
        left: 40,
        top: 25,
        bottom: 25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.sp)),
        color: Color(0xFF405F7B),
      ),
      child: PopupMenuButton<String>(
        itemBuilder: (context) {
          return list.map((str) {
            return PopupMenuItem(
              value: str,
              child: Text(str),
            );
          }).toList();
        },
        child: Row(
          children: <Widget>[
            Text(
              selected,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w600),
            ),
            Icon(Icons.arrow_drop_down, color: Colors.white),
          ],
        ),
        onSelected: (v) {
          handleSelect(v);
        },
      ),
    );
  }
}

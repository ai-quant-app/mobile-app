import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomTheme {
  static final kThemeDataTable = DataTableThemeData(
    headingTextStyle: TextStyle(
      fontSize: 55.sp,
      color: Colors.white,
    ),
    dataTextStyle: TextStyle(
      fontSize: 50.sp,
      color: Colors.white,
    ),
  );

  static final kThemePrepareStockDataTable = DataTableThemeData(
    headingTextStyle: TextStyle(
      fontSize: 40.sp,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    dataTextStyle: TextStyle(
      fontSize: 40.sp,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
}

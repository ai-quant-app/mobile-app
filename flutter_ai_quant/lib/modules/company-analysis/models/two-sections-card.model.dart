import 'dart:ui';

import 'package:flutter/material.dart';

class TwoSectionsCardModel {
  final String key;
  final String value;
  final Color keyColor;
  final Color valueColor;
  TwoSectionsCardModel(this.key, this.value, {this.keyColor = Colors.white, this.valueColor = Colors.white});
}
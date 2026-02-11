import 'package:flutter/material.dart';

extension SizedBoxExtension on double {
  get h => SizedBox(height: this);
  get w => SizedBox(width: this);
}

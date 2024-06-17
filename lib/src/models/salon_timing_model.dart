// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class Timing {
  int weekDay;
  TimeOfDay openTime;
  TimeOfDay closeTime;

  Timing({
    required this.weekDay,
    required this.openTime,
    required this.closeTime,
  });
}

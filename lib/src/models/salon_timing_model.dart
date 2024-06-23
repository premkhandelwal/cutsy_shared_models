import 'package:flutter/material.dart';

class Timing {
  final int weekDay;
  final TimeOfDay openTime;
  final TimeOfDay closeTime;

  Timing({
    required this.weekDay,
    required this.openTime,
    required this.closeTime,
  });

  factory Timing.fromJson(Map<String, dynamic> json) {
    return Timing(
      weekDay: json['weekDay'] as int,
      openTime:  TimeOfDay(
        hour: int.parse(json['openTime'].split(':')[0]),
        minute: int.parse(json['openTime'].split(':')[1]),
      ),
      closeTime: TimeOfDay(
        hour: int.parse(json['closeTime'].split(':')[0]),
        minute: int.parse(json['closeTime'].split(':')[1]),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'weekDay': weekDay,
      'openTime':  "${openTime.hour}:${openTime.minute}",
      'closeTime': "${closeTime.hour}:${closeTime.minute}"
    };
  }
}

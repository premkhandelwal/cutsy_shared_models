

import 'package:cutsy_shared_models/src/models/salon_timing_model.dart';

class Salon {
  final int id;
  final String name;
  final List<int> servicesId;
  final String about;
  final String address;
  final double distance;
  final String image;
  final Timing defaultTiming;
  final List<Timing> exceptionTimingList;
  final double rating;
  final List<DateTime> holidays;
  final int weekHoliday;

  Salon({
    required this.id,
    required this.name,
    required this.servicesId,
    required this.about,
    required this.address,
    required this.distance,
    required this.image,
    required this.defaultTiming,
    required this.exceptionTimingList,
    required this.rating,
    required this.holidays,
    required this.weekHoliday,
  });

  Timing? getOpenTimingsForDay(int day) {
    int ind =
        exceptionTimingList.indexWhere((element) => element.weekDay == day);
    if (ind != -1) {
      return exceptionTimingList[ind];
    } else {
      return Timing(
        weekDay: day,
        openTime: defaultTiming.openTime,
        closeTime: defaultTiming.closeTime,
      );
    }
  }
}

import 'package:cutsy_shared_models/src/models/salon_timing_model.dart';
import 'package:cutsy_shared_models/src/models/service_model.dart';

class Salon {
  final String id;
  final String? name;
  final List<Service> servicesList;
  final String? about;
  final String? address;
  final num? distance;
  final String? image;
  final Timing? defaultTiming;
  final List<Timing> exceptionTimingList;
  final num? rating;
  final List<DateTime> holidays;
  final int? weekHoliday;

  Salon({
    required this.id,
    required this.name,
    required this.servicesList,
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
      return defaultTiming != null
          ? Timing(
              weekDay: day,
              openTime: defaultTiming!.openTime,
              closeTime: defaultTiming!.closeTime,
            )
          : null;
    }
  }

  factory Salon.fromJson(Map<String, dynamic> json) {
    List<Service> servicesId = json['services'] != null
        ? (json['services'] as List).map((e) => Service.fromJson(e)).toList()
        : [];
    List<DateTime> holidays = json['holidays'] != null
        ? (json['holidays'] as List).map((e) => DateTime.parse(e)).toList()
        : [];
    List<Timing> exceptionTimingList = json['exceptionTimingList'] != null
        ? (json['exceptionTimingList'] as List)
            .map((e) => Timing.fromJson(e))
            .toList()
        : [];

    return Salon(
      id: json["id"] ?? '',
      name: json['name'] ?? '',
      servicesList: servicesId,
      about: json['about'] ?? "",
      address: json['address'] ?? "",
      distance: json['distance'] ?? 0,
      image: json['image'] ?? "",
      defaultTiming: json['defaultTiming'] != null
          ? Timing.fromJson(json['defaultTiming'])
          : null,
      exceptionTimingList: exceptionTimingList,
      rating: json['rating'] ?? 0,
      holidays: holidays,
      weekHoliday: json['weekHoliday'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'servicesList': servicesList.map((e) => e.toJson()).toList(),
      'about': about,
      'address': address,
      'distance': distance,
      'image': image,
      'defaultTiming': defaultTiming?.toJson(),
      'exceptionTimingList':
          exceptionTimingList.map((e) => e.toJson()).toList(),
      'rating': rating,
      'holidays': holidays.map((e) => e.toIso8601String()).toList(),
      'weekHoliday': weekHoliday,
    };
  }
}

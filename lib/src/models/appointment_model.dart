
import 'package:cutsy_shared_models/src/models/service_model.dart';

class Appointment {
  String? id;
  Map<String, dynamic> salon;
  Map<String, dynamic> user;
  List<Service> bookedService;
  DateTime appointmentTime;
  double amount;
  Appointment({
    this.id,
    required this.salon,
    required this.user,
    required this.bookedService,
    required this.appointmentTime,
    required this.amount,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      id: json['id'] as String,
      salon: json['salon'] as Map<String, dynamic>,
      user: json['user'] as Map<String, dynamic>,
      bookedService: (json['bookedService'] as List<dynamic>)
          .map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
      appointmentTime: DateTime.parse(json['appointmentTime'] as String),
      amount: (json['amount'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    List<Map> bookedService =
        this.bookedService.map((e) => e.toJson()).toList();
    return {
      'salon': {'id': salon["id"], 'name': salon["name"]},
      'user': {'id': user["id"], 'name': user["name"]},
      'bookedService': bookedService,
      'appointmentTime': appointmentTime.toIso8601String(),
      'amount': amount,
    };
  }
}

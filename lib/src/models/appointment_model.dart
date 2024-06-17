
import 'package:cutsy_shared_models/src/models/salon_model.dart';
import 'package:cutsy_shared_models/src/models/service_model.dart';

class Appointment {
  int id;
  Salon salon;
  List<Service> bookedService;
  DateTime appointmentTime;
  double amount;
  Appointment({
    required this.id,
    required this.salon,
    required this.bookedService,
    required this.appointmentTime,
    required this.amount,
  });
}

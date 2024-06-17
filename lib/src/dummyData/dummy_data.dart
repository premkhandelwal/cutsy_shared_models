import 'package:cutsy_shared_models/cutsy_shared_models.dart';
import 'package:flutter/material.dart';

class DummyData {
  static List<Service> servicesList = [
    Service(
        id: 1, name: "Haircut", price: 30, image: "assets/images/haircut.png"),
    Service(id: 2, name: "Beard", price: 50, image: "assets/images/beard.png"),
    Service(
        id: 3, name: "Massage", price: 300, image: "assets/images/massage.png"),
    Service(
        id: 4,
        name: "Manicure",
        price: 200,
        image: "assets/images/manicure.png"),
  ];

  static List<Salon> salonList = [
    Salon(
        id: 1,
        name: "Salon1",
        servicesId: [1, 2, 3, 4],
        address: "XYZ Street",
        distance: 2,
        image: "assets/images/salon1.png",
        defaultTiming: Timing(
            weekDay: 1,
            openTime: const TimeOfDay(hour: 11, minute: 57),
            closeTime: const TimeOfDay(hour: 12, minute: 15)),
        exceptionTimingList: [
          Timing(
              weekDay: 2,
              openTime: const TimeOfDay(hour: 12, minute: 57),
              closeTime: const TimeOfDay(hour: 13, minute: 57)),
          Timing(
              weekDay: 3,
              openTime: const TimeOfDay(hour: 10, minute: 57),
              closeTime: const TimeOfDay(hour: 20, minute: 57)),
          Timing(
              weekDay: 4,
              openTime: const TimeOfDay(hour: 14, minute: 57),
              closeTime: const TimeOfDay(hour: 13, minute: 57)),
          Timing(
              weekDay: 5,
              openTime: const TimeOfDay(hour: 9, minute: 57),
              closeTime: const TimeOfDay(hour: 15, minute: 57)),
          Timing(
              weekDay: 6,
              openTime: const TimeOfDay(hour: 13, minute: 57),
              closeTime: const TimeOfDay(hour: 12, minute: 57)),
        ],
        holidays: [],
        rating: 4.5,
        weekHoliday: 7,
        about:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Nullam quis ultrices eros. Duis euismod, urna eu tincidunt consectetur, nisl nunc consequat urna, in efficitur arcu lorem ac lacus. Etiam nec quam vel elit sagittis efficitur nec a nisi. Aliquam erat volutpat. Phasellus ac sodales mi, a vehicula neque. Morbi ullamcorper, magna nec imperdiet venenatis, odio urna varius nisi, a ultricies tortor justo a orci. Curabitur vehicula, nulla sit amet suscipit dapibus, sem lectus ullamcorper erat, sit amet egestas nulla libero in nisi."),
    Salon(
        id: 2,
        name: "Salon2",
        servicesId: [2, 4],
        address: "ABC Street",
        distance: 5,
        image: "assets/images/salon2.png",
        defaultTiming: Timing(
            weekDay: 1,
            openTime: const TimeOfDay(hour: 13, minute: 57),
            closeTime: const TimeOfDay(hour: 13, minute: 57)),
        exceptionTimingList: [
          Timing(
              weekDay: 2,
              openTime: const TimeOfDay(hour: 13, minute: 57),
              closeTime: const TimeOfDay(hour: 13, minute: 57)),
          Timing(
              weekDay: 3,
              openTime: const TimeOfDay(hour: 13, minute: 57),
              closeTime: const TimeOfDay(hour: 13, minute: 57)),
          Timing(
              weekDay: 4,
              openTime: const TimeOfDay(hour: 13, minute: 57),
              closeTime: const TimeOfDay(hour: 13, minute: 57)),
          Timing(
              weekDay: 5,
              openTime: const TimeOfDay(hour: 13, minute: 57),
              closeTime: const TimeOfDay(hour: 13, minute: 57)),
          Timing(
              weekDay: 6,
              openTime: const TimeOfDay(hour: 13, minute: 57),
              closeTime: const TimeOfDay(hour: 13, minute: 57)),
          Timing(
              weekDay: 7,
              openTime: const TimeOfDay(hour: 13, minute: 57),
              closeTime: const TimeOfDay(hour: 13, minute: 57)),
        ],
        holidays: [DateTime(2024, 05, 17)],
        weekHoliday: 7,
        rating: 3.5,
        about:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Nullam quis ultrices eros. Duis euismod, urna eu tincidunt consectetur, nisl nunc consequat urna, in efficitur arcu lorem ac lacus. Etiam nec quam vel elit sagittis efficitur nec a nisi. Aliquam erat volutpat. Phasellus ac sodales mi, a vehicula neque. Morbi ullamcorper, magna nec imperdiet venenatis, odio urna varius nisi, a ultricies tortor justo a orci. Curabitur vehicula, nulla sit amet suscipit dapibus, sem lectus ullamcorper erat, sit amet egestas nulla libero in nisi.")
  ];

  static List<Appointment> appointmentList = [
    Appointment(
      id: 1,
      salon: salonList[0],
      bookedService: [servicesList[0], servicesList[2]],
      appointmentTime: DateTime.now().add(Duration(hours: 1)),
      amount: 330,
    ),
    Appointment(
      id: 2,
      salon: salonList[1],
      bookedService: [servicesList[1]],
      appointmentTime: DateTime.now().add(Duration(hours: 3)),
      amount: 50,
    ),
    Appointment(
      id: 3,
      salon: salonList[0],
      bookedService: [servicesList[0], servicesList[2]],
      appointmentTime: DateTime(2024, 06, 29, 12, 00),
      amount: 330,
    ),
    Appointment(
      id: 4,
      salon: salonList[1],
      bookedService: [servicesList[1]],
      appointmentTime: DateTime(2024, 07, 29, 14, 00),
      amount: 50,
    ),
  ];
}

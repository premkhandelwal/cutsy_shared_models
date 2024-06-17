
import 'package:cutsy_shared_models/src/models/service_model.dart';
import 'package:equatable/equatable.dart';

class CartItem extends Equatable {
  final int salonId;
  final Service service;
  final double price;

  const CartItem({
    required this.salonId,
    required this.service,
    required this.price,
  });

  @override
  List<Object?> get props => [salonId, service, price];
}

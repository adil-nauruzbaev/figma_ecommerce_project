import 'package:equatable/equatable.dart';
import 'package:figma_ecommerce_project/features/cart/data/models/basket_model.dart';

class CartEntity extends Equatable {
  final List<BasketModel>? basket;
  final String? delivery;
  final String? id;
  final int? total;

  const CartEntity({
    required this.basket,
    required this.delivery,
    required this.id,
    required this.total,
  });

  @override
  List<Object?> get props => [basket, delivery, id, total];
}

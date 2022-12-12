import 'package:dartz/dartz.dart';
import 'package:figma_ecommerce_project/core/error/failure.dart';
import 'package:figma_ecommerce_project/features/cart/domain/entities/basket_entity.dart';
import 'package:figma_ecommerce_project/features/cart/domain/entities/cart_entity.dart';

abstract class CartRepository {
  Future<Either<Failure, List<BasketEntity>>> getAllBaskets();
  Future<Either<Failure, List<CartEntity>>> getAllCarts();
}

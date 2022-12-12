import 'package:dartz/dartz.dart';
import 'package:figma_ecommerce_project/core/error/failure.dart';
import 'package:figma_ecommerce_project/features/product/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<ProductEntity>>> getAllProducts();
}
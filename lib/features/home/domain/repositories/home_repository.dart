import 'package:dartz/dartz.dart';
import 'package:figma_ecommerce_project/core/error/failure.dart';
import 'package:figma_ecommerce_project/features/home/domain/entities/bestseller_entity.dart';
import 'package:figma_ecommerce_project/features/home/domain/entities/home_entity.dart';
import 'package:figma_ecommerce_project/features/home/domain/entities/home_store_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<StoreEntity>>>? getStore();
  Future<Either<Failure, List<HomeStoreEntity>>>? getHomeStore();
  Future<Either<Failure, List<BestSellerEntity>>>? getBestSeller();
}
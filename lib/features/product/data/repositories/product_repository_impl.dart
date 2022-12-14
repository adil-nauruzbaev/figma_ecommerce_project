import 'package:figma_ecommerce_project/core/error/exception.dart';
import 'package:figma_ecommerce_project/core/error/failure.dart';
import 'package:figma_ecommerce_project/features/product/data/datasources/product_remote_data_source.dart';
import 'package:figma_ecommerce_project/features/product/domain/entities/product_entity.dart';
import 'package:figma_ecommerce_project/features/product/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';


class ProductRepositoryImpl extends ProductRepository {
  final ProductDataSource productRemoteDataSource;

  ProductRepositoryImpl({required this.productRemoteDataSource});
  @override
  Future<Either<Failure, List<ProductEntity>>> getAllProducts() async {
    try {
      final remoteProduct = await productRemoteDataSource.getProduct();
      return Right(remoteProduct);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

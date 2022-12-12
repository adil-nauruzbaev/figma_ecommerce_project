import 'package:figma_ecommerce_project/core/error/failure.dart';
import 'package:figma_ecommerce_project/core/usecases/usecase.dart';
import 'package:figma_ecommerce_project/features/product/domain/entities/product_entity.dart';
import 'package:figma_ecommerce_project/features/product/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllProductsUseCase extends UseCase<List<ProductEntity>, void> {
  final ProductRepository productRepository;

  GetAllProductsUseCase(this.productRepository);
  @override
  Future<Either<Failure, List<ProductEntity>>> call({void params}) async {
    return await productRepository.getAllProducts();
  }

}
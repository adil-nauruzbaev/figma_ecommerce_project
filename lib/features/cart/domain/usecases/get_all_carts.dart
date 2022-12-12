import 'package:figma_ecommerce_project/core/error/failure.dart';
import 'package:figma_ecommerce_project/core/usecases/usecase.dart';
import 'package:figma_ecommerce_project/features/cart/domain/entities/cart_entity.dart';
import 'package:figma_ecommerce_project/features/cart/domain/repositories/cart_repository.dart';
import 'package:dartz/dartz.dart';


class GetAllCartsUseCase extends UseCase<List<CartEntity>, void> {
  final CartRepository cartRepository;

  GetAllCartsUseCase(this.cartRepository);

  @override
  Future<Either<Failure, List<CartEntity>>> call({void params}) async {
    return await cartRepository.getAllCarts();
  }
  
}

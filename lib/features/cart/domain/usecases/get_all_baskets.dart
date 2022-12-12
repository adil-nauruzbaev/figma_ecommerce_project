import 'package:figma_ecommerce_project/core/error/failure.dart';
import 'package:figma_ecommerce_project/core/usecases/usecase.dart';
import 'package:figma_ecommerce_project/features/cart/domain/entities/basket_entity.dart';
import 'package:figma_ecommerce_project/features/cart/domain/repositories/cart_repository.dart';
import 'package:dartz/dartz.dart';


class GetAllBasketsUseCase extends UseCase<List<BasketEntity>, void> {
  final CartRepository cartRepository;

  GetAllBasketsUseCase(this.cartRepository);

  @override
  Future<Either<Failure, List<BasketEntity>>> call({void params}) async {
    return await cartRepository.getAllBaskets();
  }
  
}

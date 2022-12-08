import 'package:dartz/dartz.dart';
import 'package:figma_ecommerce_project/core/error/failure.dart';
import 'package:figma_ecommerce_project/core/usecases/usecase.dart';
import 'package:figma_ecommerce_project/features/home/domain/entities/home_store_entity.dart';
import 'package:figma_ecommerce_project/features/home/domain/repositories/home_repository.dart';


class GetAllHomestoreUseCase extends UseCase<List<HomeStoreEntity>, void> {
  final HomeRepository homestoreRepository;

  GetAllHomestoreUseCase(this.homestoreRepository);

  @override
  Future<Either<Failure, List<HomeStoreEntity>>> call({void params}) async {
    return await homestoreRepository.getHomeStore()!;
  }
}
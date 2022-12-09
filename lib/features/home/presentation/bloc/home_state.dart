import 'package:equatable/equatable.dart';
import 'package:figma_ecommerce_project/features/home/domain/entities/bestseller_entity.dart';
import 'package:figma_ecommerce_project/features/home/domain/entities/home_entity.dart';
import 'package:figma_ecommerce_project/features/home/domain/entities/home_store_entity.dart';


abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeLoadingState extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeLoadedState extends HomeState {
  final List<HomeStoreEntity> loadedHomeStore;
  final List<BestSellerEntity> loadedBestseller;
  final List<StoreEntity> loadedStore;

  const HomeLoadedState({
    required this.loadedHomeStore,
    required this.loadedBestseller,
    required this.loadedStore,
  });
  @override
  List<Object> get props => [loadedHomeStore, loadedBestseller, loadedStore];
}

class HomeErrorState extends HomeState {
  final String message;

  const HomeErrorState({required this.message});
  @override
  List<Object> get props => [message];
}

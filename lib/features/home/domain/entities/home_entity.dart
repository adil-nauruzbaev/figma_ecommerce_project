import 'package:equatable/equatable.dart';
import 'package:figma_ecommerce_project/features/home/data/models/bestseller_model.dart';
import 'package:figma_ecommerce_project/features/home/data/models/homestore_model.dart';


class StoreEntity extends Equatable {
  final List<BestSellerModel>? bestSeller;
  final List<HomeStoreModel>? homeStore;

  const StoreEntity({
    required this.bestSeller,
    required this.homeStore,
  });

  @override
  List<Object?> get props => [bestSeller, homeStore];
}

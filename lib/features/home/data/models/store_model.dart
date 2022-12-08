
import 'package:figma_ecommerce_project/features/home/data/models/bestseller_model.dart';
import 'package:figma_ecommerce_project/features/home/data/models/homestore_model.dart';
import 'package:figma_ecommerce_project/features/home/domain/entities/home_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'store_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class StoreModel extends StoreEntity {
  const StoreModel({
    required List<BestSellerModel>? bestSeller,
    required List<HomeStoreModel>? homeStore,
  }) : super(
          bestSeller: bestSeller,
          homeStore: homeStore,
        );

  Map<String, dynamic> toJson() => _$StoreModelToJson(this);
  factory StoreModel.fromJson(Map<String, dynamic> json) =>
      _$StoreModelFromJson(json);
}

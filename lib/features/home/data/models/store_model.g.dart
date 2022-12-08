// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreModel _$StoreModelFromJson(Map<String, dynamic> json) => StoreModel(
      bestSeller: (json['best_seller'] as List<dynamic>?)
          ?.map((e) => BestSellerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      homeStore: (json['home_store'] as List<dynamic>?)
          ?.map((e) => HomeStoreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StoreModelToJson(StoreModel instance) =>
    <String, dynamic>{
      'best_seller': instance.bestSeller?.map((e) => e.toJson()).toList(),
      'home_store': instance.homeStore?.map((e) => e.toJson()).toList(),
    };

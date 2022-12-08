import 'package:equatable/equatable.dart';

class BestSellerEntity extends Equatable {
  final int? id;
  final bool? isFavourites;
  final String? title;
  final int? priceWithoutDiscount;
  final int? discountPrice;
  final String? picture;

  const BestSellerEntity({
    required this.id,
    required this.isFavourites,
    required this.title,
    required this.priceWithoutDiscount,
    required this.discountPrice,
    required this.picture,
  });

  @override
  List<Object?> get props =>
      [id, isFavourites, title, priceWithoutDiscount, discountPrice, picture];
}

import 'dart:io';

import 'package:real_e_comm_dashboard/features/add_product/data/models/review_model.dart';
import 'package:real_e_comm_dashboard/features/add_product/domain/entities/add_product_entitey.dart';

class AddProductModel {
  final String name;
  final String code;
  final String description;
  final num price;
  final File image;
  final bool isFeatured;
  String? imageUrl;
  final int expirationsMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final num avgRating = 0;
  final num ratingCount = 0;
  final int unitAmount;
  final List<ReviewModel> reviews;

  AddProductModel({
    required this.name,
    required this.code,
    required this.description,
    required this.price,
    required this.image,
    required this.isFeatured,
    required this.expirationsMonths,
    required this.isOrganic,
    required this.numberOfCalories,
    required this.unitAmount,
    required this.reviews,
    this.imageUrl,
  });

  factory AddProductModel.fromaddProductEntity(
    AddProductEntitey addProductEntitey,
  ) {
    return AddProductModel(
      reviews:
          addProductEntitey.reviews
              .map((e) => ReviewModel.fromEntity(e))
              .toList(),
      name: addProductEntitey.name,
      code: addProductEntitey.code,
      description: addProductEntitey.description,
      price: addProductEntitey.price,
      isOrganic: addProductEntitey.isOrganic,
      image: addProductEntitey.image,
      expirationsMonths: addProductEntitey.expirationsMonths,
      numberOfCalories: addProductEntitey.numberOfCalories,
      unitAmount: addProductEntitey.unitAmount,
      isFeatured: addProductEntitey.isFeatured,
      imageUrl: addProductEntitey.imageUrl,
    );
  }

  tomap() {
    return {
      'name': name,
      'code': code,
      'description': description,
      'price': price,
      'isFeatured': isFeatured,
      'expirationsMonths': expirationsMonths,
      'isOrganic': isOrganic,
      'numberOfCalories': numberOfCalories,
      'unitAmount': unitAmount,
      'imageUrl': imageUrl,
      'reviews': reviews.map((e) => e.toJson()).toList(),
    };
  }
}

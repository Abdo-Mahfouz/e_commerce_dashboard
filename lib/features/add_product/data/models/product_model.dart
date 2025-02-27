import 'dart:io';

import 'package:e_commerce_dashboard/features/add_product/data/models/review_model.dart';
import 'package:e_commerce_dashboard/features/add_product/domain/entites/product_entity.dart';

class ProductModel {
  final String name;
  final String code;
  final String description;
  final num price;
  final File image;
  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final bool isOrganic;
  final int numOfCalories;
  final int caloriesPer;
  final num avgRating = 0;
  final num numOfReviews = 0;
  final int sellingCount;
  final List<ReviewModel> reviews;

  ProductModel(
      {required this.name,
      required this.code,
      required this.description,
      required this.price,
      required this.expirationMonths,
      required this.numOfCalories,
      required this.caloriesPer,
      required this.image,
      required this.isFeatured,
      required this.isOrganic,
      this.imageUrl,
      this.sellingCount = 0,
      required this.reviews});

  factory ProductModel.fromEntity(ProductEntity addProductInputEntity) {
    return ProductModel(
        name: addProductInputEntity.name,
        code: addProductInputEntity.code,
        description: addProductInputEntity.description,
        price: addProductInputEntity.price,
        image: addProductInputEntity.image,
        isFeatured: addProductInputEntity.isFeatured,
        isOrganic: addProductInputEntity.isOrganic,
        imageUrl: addProductInputEntity.imageUrl,
        expirationMonths: addProductInputEntity.expirationMonths,
        numOfCalories: addProductInputEntity.numOfCalories,
        caloriesPer: addProductInputEntity.caloriesPer,
        reviews: addProductInputEntity.reviews
            .map((e) => ReviewModel.fromEntity(e))
            .toList());
  }
  toJson() {
    return {
      'name': name,
      'code': code,
      'description': description,
      'price': price,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
      'expirationMonths': expirationMonths,
      'numOfCalories': numOfCalories,
      'caloriesPer': caloriesPer,
      'isOrganic': isOrganic,
      'sellingCount': sellingCount,
      'reviews': reviews.map((e) => e.toJson()).toList(),
    };
  }
}

import 'dart:io';

import 'package:e_commerce_dashboard/features/add_product/domain/entites/review_entity.dart';

class AddProductInputEntity {
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
  final List<ReviewEntity> reviews;

  AddProductInputEntity(
      {required this.name,
      required this.code,
      required this.description,
      required this.price,
      required this.expirationMonths,
      required this.numOfCalories,
      required this.caloriesPer,
      required this.image,
      required this.reviews,
      required this.isFeatured,
      required this.isOrganic,
      this.imageUrl});
}

import 'package:e_commerce_dashboard/features/add_product/domain/entites/review_entity.dart';

class ReviewModel {
  final String name;
  final String review;
  final String image;
  final num ratting;
  final String date;

  ReviewModel(
      {required this.name,
      required this.review,
      required this.image,
      required this.ratting,
      required this.date});

  factory ReviewModel.fromEntity(ReviewEntity reviewEntity) {
    return ReviewModel(
        name: reviewEntity.name,
        review: reviewEntity.review,
        image: reviewEntity.image,
        ratting: reviewEntity.ratting,
        date: reviewEntity.date);
  }

  factory ReviewModel.fromJson(Map<String, dynamic> map) {
    return ReviewModel(
        name: map['name'],
        review: map['review'],
        image: map['image'],
        ratting: map['ratting'],
        date: map['date']);
  }
  toJson() {
    return {
      'name': name,
      'review': review,
      'image': image,
      'ratting': ratting,
      'date': date
    };
  }
}

import 'package:museum_app/model/review.dart';

class Location {
  final String name;
  final String urlImage;
  final String location;
  final int starRating;
  final List<Review> reviews;

  Location({
    required this.reviews,
    required this.name,
    required this.urlImage,
    required this.location,
    required this.starRating,
  });
}

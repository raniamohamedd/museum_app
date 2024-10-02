import 'package:museum_app/data/reviews.dart';
import 'package:museum_app/model/location.dart';

List<Location> locations = [
  Location(
    name: 'Louvre Museum ',
    urlImage: 'assets/lo.jpg',
    location: 'Paris/France',
    starRating: 4,
    reviews: Reviews.allReviews,
  ),
  Location(
    name: 'Orsay Museum',
    urlImage: 'assets/ba2.jpg',
    location: 'Paris',
    starRating: 3,
    reviews: Reviews.allReviews,
  ),
  Location(
    name: 'Vatican Museum ',
    urlImage: 'assets/v.jpg',
    location: 'Paris',
    starRating: 5,
    reviews: Reviews.allReviews,
  ),
  Location(
    name: 'Nacional Museum',
    urlImage: 'assets/na.jpg',
    location: 'Paris',
    starRating: 3,
    reviews: Reviews.allReviews,
  ),
];

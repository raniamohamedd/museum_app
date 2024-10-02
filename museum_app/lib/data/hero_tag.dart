import 'package:museum_app/model/location.dart';
import 'package:museum_app/model/review.dart';

class HeroTag {
  static String image(String urlImage) => urlImage;

  static String addressLine2(Location location) =>
      location.name + location.location;

  static String stars(Location location) =>
      location.name + location.starRating.toString();

  static String avatar(Review review, int position) =>
      review.urlImage + position.toString();
}

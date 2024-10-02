import 'package:flutter/material.dart';
import 'package:museum_app/data/hero_tag.dart';
import 'package:museum_app/data/locations.dart';
import 'package:museum_app/model/location.dart';
import 'package:museum_app/widget/hero_widget.dart';
import 'package:museum_app/widget/stars_widget.dart';

class ExpandedContentWidget extends StatelessWidget {
  final Location location;

  const ExpandedContentWidget({
    required this.location,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => 
  Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
         
            SizedBox(height: 8),
            buildAddressRating(location: location),
            SizedBox(height: 12),
            buildReview(location: location)
          ],
        ),
      );

  Widget buildAddressRating({
    required Location location,
  }) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeroWidget(
            tag: HeroTag.addressLine2(location),
            child: Text(
              location.location,
              style: TextStyle(color: Colors.black45),
            ),
          ),
          HeroWidget(
            tag: HeroTag.stars(location),
            child: StarsWidget(stars: location.starRating),
          ),
        ],
      );

  Widget buildReview({
    required Location location,
  }) =>
      Row(
        children: location.reviews.map((review) {
          final pageIndex = locations.indexOf(location);

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: HeroWidget(
              tag: HeroTag.avatar(review, pageIndex),
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                backgroundImage: AssetImage(review.urlImage),
              ),
            ),
          );
        }).toList(),
      );
}

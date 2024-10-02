import 'package:flutter/material.dart';
import 'package:museum_app/data/hero_tag.dart';
import 'package:museum_app/data/locations.dart';
import 'package:museum_app/model/location.dart';
import 'package:museum_app/model/review.dart';
import 'package:museum_app/widget/hero_widget.dart';

class ReviewsWidget extends StatelessWidget {
  final Location location;
  final Animation<double> animation;

  const ReviewsWidget({
    required this.location,
    required this.animation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.separated(
      itemCount: location.reviews.length,
      padding: EdgeInsets.all(16),
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) {
        final review = location.reviews[index];

        return AnimatedBuilder(
          animation: animation,
          builder: (context, child) => FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: Interval(0.2, 1, curve: Curves.easeInExpo),
            ),
            child: child,
          ),
          child: buildReview(review),
        );
      });

  Widget buildReview(Review review) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HeroWidget(
                  tag: HeroTag.avatar(review, locations.indexOf(location)),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.black12,
                    backgroundImage: AssetImage(review.urlImage),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: Text(
                    review.username,
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Spacer(),
              
                Icon(Icons.thumb_up_alt_outlined, size: 14)
              ],
            ),
            SizedBox(height: 8),
            Text(
              review.description,
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      );
}

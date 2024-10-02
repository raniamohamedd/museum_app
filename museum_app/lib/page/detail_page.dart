import 'package:flutter/material.dart';
import 'package:museum_app/data/hero_tag.dart';
import 'package:museum_app/model/location.dart';
import 'package:museum_app/widget/hero_widget.dart';
import 'package:museum_app/widget/lat_long_widget.dart';
import 'package:museum_app/widget/reviews_widget.dart';
import 'package:museum_app/widget/stars_widget.dart';

class DetailPage extends StatelessWidget {
  final Location location;
  final Animation<double> y;

  const DetailPage({
    required this.location,
    required this.y,
    Key ?key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.close,color: Colors.white,),
              onPressed: Navigator.of(context).pop,
            ),
            SizedBox(width: 10)
          ],
          leading: Icon(Icons.search_outlined,color: Colors.white,)
       
        ),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox.expand(
                    child: HeroWidget(
                      tag: HeroTag.image(location.urlImage),
                      child: Image.asset(location.urlImage, fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: LatLongWidget(location: location),
                  ),
                ],
              ),
            ),

Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            SizedBox(height: 8),
            HeroWidget(
              tag: HeroTag.addressLine2(location),
              child: Text(location.name),
            ),
            SizedBox(height: 8),
            HeroWidget(
              tag: HeroTag.stars(location),
              child: StarsWidget(stars: location.starRating),
        ),])),



            Expanded(
              flex: 5,
              child: ReviewsWidget(location: location, animation: y),
            ),
          ],
        ),
      );
}

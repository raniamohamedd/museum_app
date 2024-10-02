import 'package:flutter/material.dart';
import 'package:museum_app/model/location.dart';

class LatLongWidget extends StatelessWidget {
  final Location location;

  const LatLongWidget({
    required this.location,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Icon(Icons.location_on, color: Colors.white70),
          ),
       
        ],
      );
}

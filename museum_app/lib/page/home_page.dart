import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:museum_app/widget/locations_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar:
         AppBar(
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('EXPLORE',style:GoogleFonts.ptSerif(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.location_pin,color: Colors.white,),
              onPressed: () {},
            ),
            
          ],
        leading: IconButton(
              icon: Icon(Icons.search,color: Colors.white,),
              onPressed: () {},
            ),
        ),
        body: 
        Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Image.asset(
              'assets/b4.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity
              
              
            ),
            LocationsWidget()
          ],
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
      );
}

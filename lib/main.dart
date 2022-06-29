import 'package:flutter/material.dart';
import 'package:rating_bar_widget/rating_bar_widget.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rating Bar Widget',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: RatingBarWidget(
            svgRatingIcon: 'assets/icons/star.svg',
            rating: 4.5,
            height: 50,
            backgroundColor1: Colors.green,
            backgroundColor2: Colors.orange,
            maskColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}

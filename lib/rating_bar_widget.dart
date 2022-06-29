import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RatingBarWidget extends StatelessWidget {
  const RatingBarWidget({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    final double width = height * 5;
    return Container(
      height: height + 16,
      width: width + 16,
      color: Colors.red,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: height,
              width: width,
              color: Colors.grey,
            ),
          ),
          Positioned(
            top: 8,
            bottom: 8,
            left: 8,
            child: Container(
              height: height,
              width: width * 3 / 5,
              color: Colors.yellow,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: height,
              width: width,
              child: Row(
                children: [
                  buildRatingIcon(),
                  buildRatingIcon(),
                  buildRatingIcon(),
                  buildRatingIcon(),
                  buildRatingIcon(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ColorFiltered buildRatingIcon() {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.red,
        BlendMode.srcOut,
      ),
      child: Container(
        width: height,
        height: height,
        decoration: BoxDecoration(
          color: Colors.red,
          backgroundBlendMode: BlendMode.srcIn,
        ),
        child: SvgPicture.asset(
          'assets/icons/star.svg',
          color: Colors.blue,
        ),
      ),
    );
  }
}

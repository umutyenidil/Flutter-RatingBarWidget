import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RatingBarWidget extends StatelessWidget {
  const RatingBarWidget({
    Key? key,
    required this.height,
    required this.rating,
    this.backgroundColor1 = Colors.grey,
    this.backgroundColor2 = Colors.yellow,
    this.maskColor = Colors.white,
    required this.svgRatingIcon,
  }) : super(key: key);
  final double height;
  final double rating;
  final Color backgroundColor1;
  final Color backgroundColor2;
  final Color maskColor;
  final String svgRatingIcon;

  @override
  Widget build(BuildContext context) {
    final double width = height * 5;
    return Container(
      color: maskColor,
      padding: EdgeInsets.all(height * 0.025),
      child: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: height,
                width: width,
                color: backgroundColor1,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: height,
                width: width * rating / 5,
                color: backgroundColor2,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
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
      ),
    );
  }

  Widget buildRatingIcon() {
    return Expanded(
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          maskColor,
          BlendMode.srcOut,
        ),
        child: Container(
          padding: const EdgeInsets.all(1),
          width: height,
          height: height,
          decoration: BoxDecoration(
            color: maskColor,
            backgroundBlendMode: BlendMode.srcIn,
          ),
          child: SvgPicture.asset(
            svgRatingIcon,
          ),
        ),
      ),
    );
  }
}

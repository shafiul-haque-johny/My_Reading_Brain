import 'package:flutter_web/widgets/responsive.dart';
import 'package:flutter/material.dart';

class FeaturedHeading extends StatelessWidget {
  const FeaturedHeading({
    Key? key,
    required this.screenSize,
    required this.feature,
    required this.text,
  }) : super(key: key);

  final Size screenSize;
  final String feature;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: screenSize.width < 800
          ? Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$feature',
                      style: TextStyle(
                        fontSize: 36,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF077bd7),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '$text',
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '$feature',
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF077bd7),
                  ),
                ),
                Expanded(
                  child: Text(
                    '$text',
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
    );
  }
}

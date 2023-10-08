import 'package:flutter_web/widgets/bottom_bar_column.dart';
import 'package:flutter_web/widgets/info_text.dart';
import 'package:flutter_web/widgets/responsive.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);
  static const Color gradientStartColor = Color(0xff05756c);
  static const Color gradientEndColor = Color(0xff033c75);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(0.0),
        ),
        gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: const FractionalOffset(0.2, 0.2),
            end: const FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      padding: EdgeInsets.all(30),
      //color: Colors.blueGrey[900],
      child: MediaQuery.of(context).size.width < 800
          ? Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    BottomBarColumn(
                      heading: 'HELP',
                      s1: 'Payment',
                      s2: 'Cancellation',
                      s3: 'FAQ',
                    ),
                    BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Facebook',
                      s2: 'Twitter',
                      s3: 'YouTube',
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white70,
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoText(
                      type: 'Email',
                      text: 'bafhaque@gmail.com',
                    ),
                    SizedBox(height: 5),
                    InfoText(
                      type: 'Address',
                      text: 'Mohammadpur, Dhaka, Bangladesh',
                    )
                  ],
                ),
                SizedBox(height: 10),
                Divider(
                  color: Colors.white70,
                ),
                SizedBox(height: 10),
                Text(
                  'Designed By JohnyShafiul',
                  style: TextStyle(
                    color: Colors.blueGrey[200],
                    fontSize: 14,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    BottomBarColumn(
                      heading: 'HELP',
                      s1: 'Payment',
                      s2: 'Cancellation',
                      s3: 'FAQ',
                    ),
                    BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Facebook',
                      s2: 'Twitter',
                      s3: 'YouTube',
                    ),
                    Container(
                      color: Colors.white70,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoText(
                          type: 'Email',
                          text: 'bafhaque@gmail.com',
                        ),
                        SizedBox(height: 5),
                        InfoText(
                          type: 'Address',
                          text: 'Mohammadpur, Dhaka, Bangladesh',
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white70,
                ),
                SizedBox(height: 20),
                Text(
                  '© Copyright JohnyShafiul | All rights are reserved 2021-2023.',
                  style: TextStyle(
                    color: Colors.blueGrey[200],
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Designed By JohnyShafiul',
                  style: TextStyle(
                    color: Colors.blueGrey[200],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}

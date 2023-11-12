import 'package:flutter/material.dart';
import 'package:flutter_web/screens/about_page.dart';
import 'package:flutter_web/screens/home_page.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.white.withOpacity(widget.opacity),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenSize.width / 8,
                  ),
                  Text(
                    'Author',
                    style: TextStyle(
                      color: Color(0xFF077bd7),
                      fontSize: 26,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w900,
                      letterSpacing: 3,
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[0] = true : _isHovering[0] = false;
                      });
                    },
                    onTap: () => Navigator.pushNamed(
                      context,
                      HomePage.id,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Home',
                          style: TextStyle(
                            color: _isHovering[0]
                                ? Color(0xFF077bd7)
                                : Color(0xFF077bd7),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[0],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.lightGreenAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/about',
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'About',
                          style: TextStyle(
                            color: _isHovering[1]
                                ? Color(0xFF077bd7)
                                : Color(0xFF077bd7),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[1],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.lightGreenAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[2] = true : _isHovering[2] = false;
                      });
                    },
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/library',
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Library',
                          style: TextStyle(
                            color: _isHovering[2]
                                ? Color(0xFF077bd7)
                                : Color(0xFF077bd7),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[2],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.lightGreenAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[3] = true : _isHovering[3] = false;
                      });
                    },
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/history',
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'History',
                          style: TextStyle(
                            color: _isHovering[3]
                                ? Color(0xFF077bd7)
                                : Color(0xFF077bd7),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[3],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.lightGreenAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[4] = true : _isHovering[4] = false;
                      });
                    },
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/reviews',
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Reviews',
                          style: TextStyle(
                            color: _isHovering[4]
                                ? Color(0xFF077bd7)
                                : Color(0xFF077bd7),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[4],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.lightGreenAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[5] = true : _isHovering[5] = false;
                      });
                    },
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/contact',
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Contact',
                          style: TextStyle(
                            color: _isHovering[5]
                                ? Color(0xFF077bd7)
                                : Color(0xFF077bd7),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[5],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.lightGreenAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

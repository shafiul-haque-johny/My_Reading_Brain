import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/carousel.dart';
import '../widgets/featured_heading.dart';
import '../widgets/featured_tiles.dart';
import '../widgets/floating_quick_access_bar.dart';
import '../widgets/main_heading.dart';
import '../widgets/menu_drawer.dart';
import '../widgets/top_bar_contents.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final ScrollController _scrollController = ScrollController();

  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: screenSize.width < 800
          ? AppBar(
              iconTheme: IconThemeData(
                color: Colors.blue,
              ),
              elevation: 0,
              backgroundColor: Colors.white.withOpacity(_opacity),
              title: Text(
                'Author',
                style: TextStyle(
                  color: Color(0xFF077bd7),
                  fontSize: 26,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w900,
                  letterSpacing: 3,
                ),
              ),
              centerTitle: true,
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: TopBarContents(_opacity),
            ),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: SizedBox(
                    height: screenSize.height * 0.65,
                    width: screenSize.width,
                    child: Image.asset(
                      'assets/images/background.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: screenSize.height / 1.4),
                    Text(
                      'About',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff033c75),
                      ),
                    ),
                    SizedBox(height: screenSize.height / 25),
                    Text(
                      'My Reading Brain',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff05756c),
                      ),
                    ),
                    SizedBox(height: screenSize.height / 10),
                    Text(
                      '“The more that you read, the more things you will know. '
                      '\n The more that you learn, the more places you’ll go.” '
                      '\n                                   Dr. Seuss ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff228c83),
                      ),
                    ),
                    SizedBox(height: screenSize.height / 10),
                    Text(
                      'Owner',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff033c75),
                      ),
                    ),
                    SizedBox(height: screenSize.height / 25),
                    Image.asset(
                      'assets/images/ProfilePic.jpg',
                      height: screenSize.height * 0.35,
                      width: screenSize.width * 35,
                    ),
                    SizedBox(height: screenSize.height / 25),
                    Text(
                      'Md. Shafiul Haque Johny',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff05756c),
                      ),
                    ),
                    SizedBox(height: screenSize.height / 5),
                    BottomBar(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
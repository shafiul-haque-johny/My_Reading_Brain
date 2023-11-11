import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/featured_heading.dart';
import '../widgets/featured_tiles.dart';
import '../widgets/menu_drawer.dart';
import '../widgets/top_bar_contents.dart';

class LibraryPage extends StatefulWidget {
  static const String id = 'library_page';

  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
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
                      'My Library',
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
                    FeaturedHeading(
                      screenSize: screenSize,
                      feature: 'Featured',
                      text: 'Clue of the wooden cottage',
                    ),
                    FeaturedTiles(
                      screenSize: screenSize,
                    ),
                    SizedBox(height: screenSize.height / 10),
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

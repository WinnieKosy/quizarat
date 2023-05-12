import 'package:flutter/material.dart';
import 'package:fluttertask/presentation/screens/home_screen.dart';
import 'package:fluttertask/presentation/screens/questionScreen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    int initialPage = 0;
    final PageController _pageController = PageController(initialPage: 0);
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (int index) {
          setState(() {
            initialPage = index;
          });
        },
        children: screens(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //iconSize: 17,
        selectedFontSize: 10,
        unselectedItemColor: const Color(0xBBBBBBBB),
        backgroundColor: const Color(0xff0E3C6E),
        fixedColor: const Color(0xffffffff),
        items: _bottomNavigationItems(),
        onTap: (int index) {
          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 01),
              curve: Curves.easeIn);
        },
        currentIndex: initialPage,
      ),
    );
  }

  List<BottomNavigationBarItem> _bottomNavigationItems() {
    return <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Image.asset("assets/images/Vector.png"),
        label: 'question',
      ),
      BottomNavigationBarItem(
          icon: Image.asset("assets/images/Discovery.png"), label: 'saved'),
      BottomNavigationBarItem(
          icon: Image.asset("assets/images/Vector (1).png"), label: 'account'),
    ];
  }

  List<Widget> screens() {
    return <Widget>[const HomeScreen(), const Questions()];
  }
}

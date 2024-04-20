import 'package:flutter/material.dart';
import 'package:weather_besenior/core/widgets/bottom_navigation_bar.dart';
import 'package:weather_besenior/features/feature_bookmark/peresntation/screens/bookmark_screen.dart';
import 'package:weather_besenior/features/feature_weather/peresntation/screens/home_screen.dart';

class MainWrapper extends StatelessWidget {
  final PageController pageController = PageController(initialPage: 0);

  MainWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pageViewWidgets = [
      const HomeScreen(),
      const BookMarkScreen(),
    ];
    return Scaffold(extendBody: true,
      bottomNavigationBar: BottomNavBar(
        controller: pageController,
      ),
      body: SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: PageView(
            controller: pageController,
            children: pageViewWidgets,
          )
      ),
    );
  }
}

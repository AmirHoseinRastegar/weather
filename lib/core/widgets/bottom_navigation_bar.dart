import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final PageController controller;

  const BottomNavBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      child: SizedBox(
        height: 63,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                controller.animateToPage(0, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);

              },
              icon: const Icon(Icons.home),
            ),IconButton(
              onPressed: () {
                 controller.animateToPage(1, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
              },
              icon: const Icon(Icons.bookmark),
            ),
          ],
        ),
      ),
    );
  }
}

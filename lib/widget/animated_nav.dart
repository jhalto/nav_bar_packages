import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nav_bar_packages/widget/curve_navigation_bar.dart';
import 'package:nav_bar_packages/widget/expanded.dart';
import 'package:nav_bar_packages/widget/homepage.dart';
import 'package:nav_bar_packages/widget/row_column.dart';

class AnimatedCurveNav extends StatefulWidget {
  const AnimatedCurveNav({super.key});

  @override
  State<AnimatedCurveNav> createState() => _AnimatedCurveNavState();
}

class _AnimatedCurveNavState extends State<AnimatedCurveNav> {
  List<Widget> pages = [HomePage(),RowColumn(),ExpandedDemo(),CurveNavDemo()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[currentIndex],
      
      
        bottomNavigationBar: AnimatedBottomNavigationBar(
            gapLocation: GapLocation.center,
          activeIndex: currentIndex,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          inactiveColor: Colors.orange,
      height: 50,
          activeColor: Colors.white70,
          borderColor: Colors.black,
          leftCornerRadius: 20,
          rightCornerRadius: 20,
          backgroundColor: Colors.black,
          icons: [
      
            Icons.home,
            Icons.view_column,
            Icons.expand,
            Icons.cable,
      
          ],
      
          onTap: (val ) {
            setState(() {
              currentIndex = val;
            });
        },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
          mini: true,
          backgroundColor: Colors.orange.withOpacity(0),
          focusColor: Colors.orange,
          hoverColor: Colors.orange,
          foregroundColor: Colors.orange,
          shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.circular(50)
          ),
          onPressed: (){},
          child: Icon(Icons.star,color: Colors.black,),
        ),
      ),
    );
  }
}

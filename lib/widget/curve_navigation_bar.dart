import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:nav_bar_packages/widget/homepage.dart';
import 'package:nav_bar_packages/widget/row_column.dart';

import 'expanded.dart';

class CurveNavDemo extends StatefulWidget {
  const CurveNavDemo({super.key});

  @override
  State<CurveNavDemo> createState() => _CurveNavDemoState();
}

class _CurveNavDemoState extends State<CurveNavDemo> {
 List<Widget> pages= [
   HomePage(),
   RowColumn(),
   ExpandedDemo(),
 ];
 int currentIndex= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: CurvedNavigationBar(
          animationCurve: Easing.legacy,

        onTap: (val){
          setState(() {
            currentIndex=val;
          });
        },

       items: [
         CurvedNavigationBarItem(child: Icon(Icons.home),label: "Home",),
         CurvedNavigationBarItem(child: Icon(Icons.home),label: "Column",),
         CurvedNavigationBarItem(child: Icon(Icons.home),label: "Expand",),


       ],
      ),

    );
  }
}


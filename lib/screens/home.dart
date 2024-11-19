import 'package:application/screens/gallery.dart';
import 'package:application/screens/map.dart';
import 'package:application/screens/overview.dart';
import 'package:application/screens/planning.dart';
import 'package:application/styles/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const OverviewPage(),
    const MapPage(),
    const GalleryPage(),
    const PlanningPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voyagera'),
        centerTitle: true,
        backgroundColor: darkPurple,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0), // Height of the line
          child: Container(
            color: lightPink, // Line color
            height: 1.0, // Thickness of the line
          ),
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: Column(
        mainAxisSize:
            MainAxisSize.min, // Ensures the column takes minimal space
        children: [
          Container(
            color: lightPink, // Line color
            height: 1.0, // Thickness of the line
          ),
          SizedBox(
            height: 80,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.map),
                  label: 'Map',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.image),
                  label: 'Gallery',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month),
                  label: 'Planner',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:application/screens/travel/gallery.dart';
import 'package:application/screens/travel/map.dart';
import 'package:application/screens/travel/overview.dart';
import 'package:application/screens/travel/planning.dart';
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
    return Container(
      color: darkPurple,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: darkPurple,
            leading: SizedBox(
              width: 40,
              child: IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.home,
                ),
                iconSize: 30,
              ),
            ),
            title: Text("Voyagera"),
            centerTitle: true,
            actions: [
              SizedBox(
                child: IconButton(
                  icon: Icon(
                    Icons.person,
                  ),
                  //label: "",
                  iconSize: 40,
                  onPressed: () {},
                ),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(1.0),
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
              BottomNavigationBar(
                elevation: 0,
                useLegacyColorScheme: false,
                type: BottomNavigationBarType.fixed,
                currentIndex: _currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.airplanemode_active),
                    label: 'Overview',
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
            ],
          ),
        ),
      ),
    );
  }
}

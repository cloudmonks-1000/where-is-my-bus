import 'package:flutter/material.dart';

import '../home/home_screen.dart';
import '../search/search_screen.dart';
import '../map/map_screen.dart';
import '../profile/profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int currentIndex = 0;

 late final List<Widget> pages;

@override
void initState() {
  super.initState();

  pages = [
    HomeScreen(
      onSearchTap: () {
        setState(() {
          currentIndex = 1;
        });
      },
    ),
    const SearchScreen(),
    const MapScreen(),
    const ProfileScreen(),
  ];
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(

    body: IndexedStack(
  index: currentIndex,
  children: pages,
),

      bottomNavigationBar: NavigationBar(

        selectedIndex: currentIndex,

        onDestinationSelected: (value){

          setState(() {
            currentIndex = value;
          });

        },

        destinations: const [

          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: "Home",
          ),

          NavigationDestination(
            icon: Icon(Icons.search),
            label: "Search",
          ),

          NavigationDestination(
            icon: Icon(Icons.map_outlined),
            selectedIcon: Icon(Icons.map),
            label: "Map",
          ),

          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: "Profile",
          ),

        ],
      ),
    );
  }
}
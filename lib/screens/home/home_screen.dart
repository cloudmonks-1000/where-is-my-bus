import 'package:flutter/material.dart';

import '../../models/bus_route.dart';
import '../../widgets/quick_action_card.dart';
import '../../widgets/route_card.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback onSearchTap;

  const HomeScreen({
    super.key,
    required this.onSearchTap,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  final List<BusRoute> routes = [
    BusRoute(
      busNo: "23A",
      source: "GL Bajaj",
      destination: "Pari Chowk",
      eta: "12 mins",
    ),
    BusRoute(
      busNo: "15",
      source: "Sector 62",
      destination: "Botanical Garden",
      eta: "8 mins",
    ),
    BusRoute(
      busNo: "42B",
      source: "Knowledge Park",
      destination: "Alpha 1",
      eta: "18 mins",
    ),
  ];

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  String greeting() {
    int hour = DateTime.now().hour;

    if (hour < 12) {
      return "Good Morning";
    } else if (hour < 17) {
      return "Good Afternoon";
    } else {
      return "Good Evening";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                greeting(),
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                "Ashutosh 👋",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 25),

              TextField(
                controller: searchController,
                readOnly: true,
                onTap: widget.onSearchTap,
                decoration: InputDecoration(
                  hintText: "Search Bus Number",
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Quick Actions",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),

              const SizedBox(height: 20),

              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.4,
                children: [
                  QuickActionCard(
                    icon: Icons.directions_bus,
                    title: "Live Bus",
                    onTap: () {},
                  ),
                  QuickActionCard(
                    icon: Icons.location_on,
                    title: "Nearby Stops",
                    onTap: () {},
                  ),
                  QuickActionCard(
                    icon: Icons.favorite,
                    title: "Favorites",
                    onTap: () {},
                  ),
                  QuickActionCard(
                    icon: Icons.history,
                    title: "Recent Trips",
                    onTap: () {},
                  ),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                "Popular Routes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),

              const SizedBox(height: 20),

              ListView.builder(
                itemCount: routes.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return RouteCard(
                    route: routes[index],
                    onTap: () {},
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../../models/bus_route.dart';
import '../../widgets/route_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchController = TextEditingController();

  final List<BusRoute> allRoutes = [
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
    BusRoute(
      busNo: "101",
      source: "Noida City Centre",
      destination: "Greater Noida",
      eta: "25 mins",
    ),
  ];

  List<BusRoute> filteredRoutes = [];

  @override
  void initState() {
    super.initState();
    filteredRoutes = allRoutes;
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void searchBus(String value) {
    setState(() {
      filteredRoutes = allRoutes.where((route) {
        return route.busNo.toLowerCase().contains(value.toLowerCase()) ||
            route.source.toLowerCase().contains(value.toLowerCase()) ||
            route.destination.toLowerCase().contains(value.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Bus"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            TextField(
              controller: searchController,
              onChanged: searchBus,

              decoration: InputDecoration(
                hintText: "Search by Bus No, Source or Destination",
                prefixIcon: const Icon(Icons.search),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 25),

            Expanded(
              child: filteredRoutes.isEmpty
                  ? const Center(
                      child: Text(
                        "No Bus Found",
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  : ListView.builder(
                      itemCount: filteredRoutes.length,
                      itemBuilder: (context, index) {
                        return RouteCard(
                          route: filteredRoutes[index],
                          onTap: () {
                            // Next Screen
                          },
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
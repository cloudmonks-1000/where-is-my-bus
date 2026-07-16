import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> routes = [
    {
      "bus": "23A",
      "route": "GL Bajaj → Pari Chowk",
      "time": "15 mins"
    },
    {
      "bus": "15",
      "route": "Sector 62 → Botanical Garden",
      "time": "8 mins"
    },
    {
      "bus": "42B",
      "route": "Knowledge Park → Noida",
      "time": "20 mins"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "WhereIsMyBus",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "👋 Good Evening",
              style: TextStyle(
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Ashutosh",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            TextField(
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
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 20),

            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              children: const [

                ActionCard(
                  icon: Icons.directions_bus,
                  title: "Live Bus",
                ),

                ActionCard(
                  icon: Icons.location_on,
                  title: "Nearby Stops",
                ),

                ActionCard(
                  icon: Icons.favorite,
                  title: "Favorites",
                ),

                ActionCard(
                  icon: Icons.history,
                  title: "Recent Trips",
                ),

              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Popular Routes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 15),

            ...routes.map(
              (bus) => Card(
                margin: const EdgeInsets.only(bottom: 15),
                child: ListTile(
                  leading: const CircleAvatar(
                    child: Icon(Icons.directions_bus),
                  ),
                  title: Text(
                    bus["bus"]!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "${bus["route"]}\nETA : ${bus["time"]}",
                  ),
                  isThreeLine: true,
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const ActionCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 35),
            const SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
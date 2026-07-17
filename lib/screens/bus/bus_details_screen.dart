import 'package:flutter/material.dart';

import '../../models/bus_route.dart';

class BusDetailsScreen extends StatefulWidget {
  final BusRoute route;

  const BusDetailsScreen({
    super.key,
    required this.route,
  });

  @override
  State<BusDetailsScreen> createState() => _BusDetailsScreenState();
}

class _BusDetailsScreenState extends State<BusDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bus ${widget.route.busNo}"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 45,
              backgroundColor: Colors.blue.shade100,
              child: const Icon(
                Icons.directions_bus,
                size: 50,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              widget.route.busNo,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "${widget.route.source} → ${widget.route.destination}",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 30),

            Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Driver"),
                subtitle: const Text("Rahul Sharma"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.speed),
                title: const Text("Speed"),
                subtitle: const Text("38 km/h"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.timer),
                title: const Text("ETA"),
                subtitle: Text(widget.route.eta),
              ),
            ),

            Card(
              child: const ListTile(
                leading: Icon(Icons.people),
                title: Text("Passengers"),
                subtitle: Text("26 / 40"),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Next: Map Screen
                },
                icon: const Icon(Icons.map),
                label: const Text("Track Live Bus"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
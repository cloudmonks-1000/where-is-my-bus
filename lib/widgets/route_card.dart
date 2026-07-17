import 'package:flutter/material.dart';

import '../models/bus_route.dart';

class RouteCard extends StatefulWidget {
  final BusRoute route;
  final VoidCallback onTap;

  const RouteCard({
    super.key,
    required this.route,
    required this.onTap,
  });

  @override
  State<RouteCard> createState() => _RouteCardState();
}

class _RouteCardState extends State<RouteCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        onTap: widget.onTap,
        leading: CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          child: const Icon(Icons.directions_bus),
        ),
        title: Text(
          widget.route.busNo,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "${widget.route.source} → ${widget.route.destination}\nETA : ${widget.route.eta}",
        ),
        isThreeLine: true,
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
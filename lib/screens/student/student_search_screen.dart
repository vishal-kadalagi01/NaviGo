import 'package:flutter/material.dart';

class StudentSearchScreen extends StatefulWidget {
  const StudentSearchScreen({Key? key}) : super(key: key);

  @override
  _StudentSearchScreenState createState() => _StudentSearchScreenState();
}

class _StudentSearchScreenState extends State<StudentSearchScreen> {
  final List<Map<String, dynamic>> routes = [
    {"route": "R1: Indal Route", "bus": "Bus 1"},
    {"route": "R2: Hanuman Nagar Route", "bus": "Bus 2"},
    {"route": "R3: Mahantesh Nagar Route", "bus": "Bus 3"},
    {"route": "R4: Kanabargi Route", "bus": "Bus 4"},
    {"route": "R5: Shahpur Route", "bus": "Bus 5"},
    {"route": "R6: Sahyadri Nagar Route", "bus": "Bus 6"},
    {"route": "R7: Samra Route", "bus": "Bus 7"},
    {"route": "R8: Khanapur Route", "bus": "Bus 8"},
  ];

  String query = "";

  @override
  Widget build(BuildContext context) {
    final filteredRoutes = routes.where((route) {
      return route["route"].toLowerCase().contains(query.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Bus Routes"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Search for a route...",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  query = value;
                });
              },
            ),
          ),
          Expanded(
            child: filteredRoutes.isEmpty
                ? const Center(child: Text("No routes found"))
                : ListView.builder(
                    itemCount: filteredRoutes.length,
                    itemBuilder: (context, index) {
                      final route = filteredRoutes[index];
                      return Card(
                        child: ListTile(
                          title: Text(route["route"]),
                          subtitle: Text("Bus Number: ${route["bus"]}"),
                          leading: const Icon(Icons.directions_bus),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

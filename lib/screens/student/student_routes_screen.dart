import 'package:flutter/material.dart';

class StudentRoutesScreen extends StatelessWidget {
  static const List<Map<String, dynamic>> routes = [
    {
      "route": "R1: Indal Route",
      "trips": {
        "Trip 1": [
          {"stop": "Indal", "timing": "7:05 AM"},
          {"stop": "Basav Colony", "timing": "7:05 AM"},
          {"stop": "Azam Nagar", "timing": "7:05 AM"},
          {"stop": "Basavan Circle", "timing": "7:10 AM"},
          {"stop": "Laxmi Complex", "timing": "7:15 AM"},
          {"stop": "Channamma Circle", "timing": "7:20 AM"},
          {"stop": "College Campus", "timing": "7:45 AM"}
        ],
        "Trip 2": [
          {"stop": "Indal", "timing": "8:05 AM"},
          {"stop": "Basav Colony", "timing": "8:05 AM"},
          {"stop": "Azam Nagar", "timing": "8:05 AM"},
          {"stop": "Basavan Circle", "timing": "8:10 AM"},
          {"stop": "Laxmi Complex", "timing": "8:15 AM"},
          {"stop": "Channamma Circle", "timing": "8:20 AM"},
          {"stop": "College Campus", "timing": "8:45 AM"}
        ]
      }
    },
    {
      "route": "R2: Hanuman Nagar Route",
      "trips": {
        "Trip 1": [
          {"stop": "Azam Nagar Circle", "timing": "7:05 AM"},
          {"stop": "Hanuman Nagar", "timing": "7:10 AM"},
          {"stop": "DC House", "timing": "7:15 AM"},
          {"stop": "Laxmi Complex", "timing": "7:15 AM"},
          {"stop": "Channamma Circle", "timing": "7:20 AM"},
          {"stop": "College Campus", "timing": "7:45 AM"}
        ],
        "Trip 2": [
          {"stop": "Azam Nagar Circle", "timing": "8:05 AM"},
          {"stop": "Hanuman Nagar", "timing": "8:10 AM"},
          {"stop": "DC House", "timing": "8:15 AM"},
          {"stop": "Laxmi Complex", "timing": "8:15 AM"},
          {"stop": "Channamma Circle", "timing": "8:20 AM"},
          {"stop": "College Campus", "timing": "8:45 AM"}
        ]
      }
    },
    {
      "route": "R3: Mahantesh Nagar Route",
      "trips": {
        "Trip 1": [
          {"stop": "Shivabasava Nagar", "timing": "7:05 AM"},
          {"stop": "Sai Mandir Nagar", "timing": "7:05 AM"},
          {"stop": "Auto Nagar", "timing": "7:10 AM"},
          {"stop": "Dairy", "timing": "7:15 AM"},
          {"stop": "Mahantesh Nagar", "timing": "7:20 AM"},
          {"stop": "Fort Lake", "timing": "7:20 AM"},
          {"stop": "Channamma Circle", "timing": "7:25 AM"},
          {"stop": "College Campus", "timing": "7:45 AM"}
        ],
        "Trip 2": [
          {"stop": "Shivabasava Nagar", "timing": "8:05 AM"},
          {"stop": "Sai Mandir Nagar", "timing": "8:05 AM"},
          {"stop": "Auto Nagar", "timing": "8:10 AM"},
          {"stop": "Dairy", "timing": "8:15 AM"},
          {"stop": "Mahantesh Nagar", "timing": "8:20 AM"},
          {"stop": "Fort Lake", "timing": "8:20 AM"},
          {"stop": "Channamma Circle", "timing": "8:25 AM"},
          {"stop": "College Campus", "timing": "8:45 AM"}
        ]
      }
    },
    {
      "route": "R4: Kanabargi Route",
      "trips": {
        "Trip 1": [
          {"stop": "Kanabargi", "timing": "7:05 AM"},
          {"stop": "Surabhi", "timing": "7:10 AM"},
          {"stop": "Dairy", "timing": "7:15 AM"},
          {"stop": "Mahantesh Bridge", "timing": "7:20 AM"},
          {"stop": "Fort Lake", "timing": "7:20 AM"},
          {"stop": "Channamma Circle", "timing": "7:25 AM"},
          {"stop": "College Campus", "timing": "7:45 AM"}
        ],
        "Trip 2": [
          {"stop": "Kanabargi", "timing": "8:05 AM"},
          {"stop": "Surabhi", "timing": "8:10 AM"},
          {"stop": "Dairy", "timing": "8:15 AM"},
          {"stop": "Mahantesh Bridge", "timing": "8:20 AM"},
          {"stop": "Fort Lake", "timing": "8:20 AM"},
          {"stop": "Channamma Circle", "timing": "8:25 AM"},
          {"stop": "College Campus", "timing": "8:45 AM"}
        ]
      }
    },
    {
      "route": "R5: Shahpur Route",
      "trips": {
        "Trip 1": [
          {"stop": "Kapileshwar Temple", "timing": "7:05 AM"},
          {"stop": "Dharwad Road", "timing": "7:10 AM"},
          {"stop": "Shahpur Khade Bazar", "timing": "7:10 AM"},
          {"stop": "Nath Pai Circle", "timing": "7:15 AM"},
          {"stop": "Vadagaon", "timing": "7:20 AM"},
          {"stop": "Hindwadi", "timing": "7:25 AM"},
          {"stop": "College Campus", "timing": "7:45 AM"}
        ],
        "Trip 2": [
          {"stop": "Kapileshwar Temple", "timing": "8:05 AM"},
          {"stop": "Dharwad Road", "timing": "8:10 AM"},
          {"stop": "Shahpur Khade Bazar", "timing": "8:10 AM"},
          {"stop": "Nath Pai Circle", "timing": "8:15 AM"},
          {"stop": "Vadagaon", "timing": "8:20 AM"},
          {"stop": "Hindwadi", "timing": "8:25 AM"},
          {"stop": "College Campus", "timing": "8:45 AM"}
        ]
      }
    },
    {
      "route": "R6: Sahyadri Nagar Route",
      "trips": {
        "Trip 1": [
          {"stop": "Sahyadri Nagar", "timing": "7:05 AM"},
          {"stop": "Ganapati Temple", "timing": "7:10 AM"},
          {"stop": "Ganesh Pur", "timing": "7:10 AM"},
          {"stop": "Bagicha Hotel", "timing": "7:15 AM"},
          {"stop": "Military Hospital", "timing": "7:15 AM"},
          {"stop": "Bogar Vase", "timing": "7:20 AM"},
          {"stop": "College Campus", "timing": "7:45 AM"}
        ],
        "Trip 2": [
          {"stop": "Sahyadri Nagar", "timing": "8:05 AM"},
          {"stop": "Ganapati Temple", "timing": "8:10 AM"},
          {"stop": "Ganesh Pur", "timing": "8:10 AM"},
          {"stop": "Bagicha Hotel", "timing": "8:15 AM"},
          {"stop": "Military Hospital", "timing": "8:15 AM"},
          {"stop": "Bogar Vase", "timing": "8:20 AM"},
          {"stop": "College Campus", "timing": "8:45 AM"}
        ]
      }
    },
    {
      "route": "R7: Samra Route",
      "trips": {
        "Trip 1": [
          {"stop": "Samra", "timing": "7:05 AM"},
          {"stop": "SC Motors", "timing": "7:10 AM"},
          {"stop": "RTO Circle", "timing": "7:15 AM"},
          {"stop": "Channamma Circle", "timing": "7:20 AM"},
          {"stop": "Bogar Vase", "timing": "7:25 AM"},
          {"stop": "College Campus", "timing": "7:45 AM"}
        ],
        "Trip 2": [
          {"stop": "Samra", "timing": "8:05 AM"},
          {"stop": "SC Motors", "timing": "8:10 AM"},
          {"stop": "RTO Circle", "timing": "8:15 AM"},
          {"stop": "Channamma Circle", "timing": "8:20 AM"},
          {"stop": "Bogar Vase", "timing": "8:25 AM"},
          {"stop": "College Campus", "timing": "8:45 AM"}
        ]
      }
    },
    {
      "route": "R8: Khanapur Route",
      "trips": {
        "Trip 1": [
          {"stop": "Nandgad Exit", "timing": "7:00 AM"},
          {"stop": "Pottery Institute", "timing": "7:05 AM"},
          {"stop": "KLE BCA College", "timing": "7:10 AM"},
          {"stop": "College Campus", "timing": "7:45 AM"}
        ],
        "Trip 2": [
          {"stop": "Nandgad Exit", "timing": "8:00 AM"},
          {"stop": "Pottery Institute", "timing": "8:05 AM"},
          {"stop": "KLE BCA College", "timing": "8:10 AM"},
          {"stop": "College Campus", "timing": "8:45 AM"}
        ]
      }
    },
  ];

  const StudentRoutesScreen({Key? key}) : super(key: key);

  void _showRouteDetails(BuildContext context, Map<String, dynamic> route) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TripSelectionScreen(route: route),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bus Routes"),
      ),
      body: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (context, index) {
          final route = routes[index];
          return ListTile(
            title: Text(route["route"]),
            onTap: () => _showRouteDetails(context, route),
          );
        },
      ),
    );
  }
}

class TripSelectionScreen extends StatelessWidget {
  final Map<String, dynamic> route;

  const TripSelectionScreen({Key? key, required this.route}) : super(key: key);

  void _showTripDetails(BuildContext context, String tripName, List<Map<String, String>> stops) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RouteDetailsScreen(tripName: tripName, stops: stops),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final trips = route["trips"] as Map<String, List<Map<String, String>>>;
    return Scaffold(
      appBar: AppBar(
        title: Text(route["route"]),
      ),
      body: ListView(
        children: trips.keys.map((tripName) {
          return ListTile(
            title: Text(tripName),
            onTap: () => _showTripDetails(context, tripName, trips[tripName]!),
          );
        }).toList(),
      ),
    );
  }
}

class RouteDetailsScreen extends StatelessWidget {
  final String tripName;
  final List<Map<String, String>> stops;

  const RouteDetailsScreen({Key? key, required this.tripName, required this.stops}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tripName),
      ),
      body: ListView.builder(
        itemCount: stops.length,
        itemBuilder: (context, index) {
          final stop = stops[index];
          return ListTile(
            title: Text(stop["stop"]!),
            subtitle: Text("Timing: ${stop["timing"]!}"),
          );
        },
      ),
    );
  }
}

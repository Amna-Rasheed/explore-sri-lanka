import 'package:flutter/material.dart';

class ItineraryPage extends StatelessWidget {
  final List<String> itinerary = [
    "Day 1: Arrival and Colombo City Tour",
    "Day 2: Explore Kandy and Visit the Temple of the Tooth",
    "Day 3: Hike in Ella and Visit Nine Arches Bridge",
    "Day 4: Safari in Yala National Park",
    "Day 5: Relax at Unawatuna Beach",
    "Day 6: Galle Fort and Departure",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Itinerary'),
        backgroundColor: Colors.teal.shade700,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.teal.shade900, Colors.teal.shade700],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Travel Plan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemCount: itinerary.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.teal.shade800,
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: ListTile(
                        title: Text(
                          itinerary[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundColor: Colors.orange.shade600,
                          child: Text(
                            'Day ${index + 1}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

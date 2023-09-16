import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plane Ticket Booking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/plane2.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    color: Color(0xFF01062B)
                        .withOpacity(0.5), // Blue color overlay
                  ),
                  Center(
                    child: Image.asset(
                      'assets/guzo.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white, // Bell icon background color
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white, // Bell icon color
                  ),
                  onPressed: () {
                    // Handle notifications
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildRoundButton('Return'),
                const SizedBox(width: 16),
                _buildRoundButton('One Way'),
              ],
            ),
            _buildSelectionRow('From', 'To'),
            _buildSelectionRow('Departure date', 'Return date'),
            _buildSelectionRow('Cabin class', 'Passengers'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle search flights
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xFF100DBE),
                backgroundColor: Colors.yellow,
                shape: const StadiumBorder(),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                child: Text(
                  'Search Flights',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
                color: Color(0xFF100DBE)), // Dark blue icon color
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel,
                color: Color(0xFF100DBE)), // Dark blue icon color
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,
                color: Color(0xFF100DBE)), // Dark blue icon color
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,
                color: Color(0xFF100DBE)), // Dark blue icon color
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Widget _buildRoundButton(String text) {
    return ElevatedButton(
      onPressed: () {
        // Handle round button tap
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF100DBE),
        shape: const StadiumBorder(),
      ),
      child: Text(text),
    );
  }

  Widget _buildSelectionRow(String leftText, String rightText) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            title: Text(leftText),
            subtitle: Text('Select'),
            onTap: () {
              // Handle selection
            },
          ),
        ),
        Expanded(
          child: ListTile(
            title: Text(rightText),
            subtitle: Text('Select'),
            onTap: () {
              // Handle selection
            },
          ),
        ),
      ],
    );
  }
}

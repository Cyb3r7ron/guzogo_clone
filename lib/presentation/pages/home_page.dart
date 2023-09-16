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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                // Handle notifications
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/background_image.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  color:
                      Colors.blue.withOpacity(0.5), // Adjust opacity as needed
                ),
                Center(
                  child: Image.asset(
                    'assets/logo.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
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
              primary: Colors.yellow,
              onPrimary: Colors.blue,
              shape: const StadiumBorder(),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              child: Text(
                'Search Flights',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildMenuButton(Icons.search, 'Search'),
              _buildMenuButton(Icons.card_travel, 'Booking'),
              _buildMenuButton(Icons.notifications, 'Notifications'),
              _buildMenuButton(Icons.settings, 'Settings'),
            ],
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
        primary: Colors.blue,
        onPrimary: Colors.white,
        shape: const CircleBorder(),
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
            subtitle: const Text('Select'),
            onTap: () {
              // Handle selection
            },
          ),
        ),
        Expanded(
          child: ListTile(
            title: Text(rightText),
            subtitle: const Text('Select'),
            onTap: () {
              // Handle selection
            },
          ),
        ),
      ],
    );
  }

  Widget _buildMenuButton(IconData icon, String text) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: () {
            // Handle menu button tap
          },
        ),
        Text(text),
      ],
    );
  }
}

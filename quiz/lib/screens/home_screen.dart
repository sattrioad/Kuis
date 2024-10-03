// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blue Doorz'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.asset('assets/images/logohotel.png', height: 50),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Welcome to Blue Doorz!',
                style: TextStyle(
                  fontSize: 18,
                )),
          ),
          SizedBox(height: 20),
          _buildButton(
            'About App',
            Icons.hotel_rounded,
            () async {
              const url = 'https://www.traveloka.com/en-id';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              children: [
                Card(
                  child: Column(
                    children: [
                      Image.asset('assets/images/hotel.jpg', height: 100),
                      Text('Blue Lagoon',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Rp500.000,00 / Night'),
                      ElevatedButton(
                        child: Text('Book Now'),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/booking'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset('assets/images/hotel.jpg', height: 100),
                      Text('Blue Lagoon',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Rp500.000,00 / Night'),
                      ElevatedButton(
                        child: Text('Book Now'),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/booking'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset('assets/images/hotel.jpg', height: 100),
                      Text('Blue Lagoon',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Rp500.000,00 / Night'),
                      ElevatedButton(
                        child: Text('Book Now'),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/booking'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset('assets/images/hotel.jpg', height: 100),
                      Text('Blue Lagoon',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Rp500.000,00 / Night'),
                      ElevatedButton(
                        child: Text('Book Now'),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/booking'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset('assets/images/hotel.jpg', height: 100),
                      Text('Blue Lagoon',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Rp500.000,00 / Night'),
                      ElevatedButton(
                        child: Text('Book Now'),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/booking'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset('assets/images/hotel.jpg', height: 100),
                      Text('Blue Lagoon',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Rp500.000,00 / Night'),
                      ElevatedButton(
                        child: Text('Book Now'),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/booking'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset('assets/images/hotel.jpg', height: 100),
                      Text('Blue Lagoon',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Rp500.000,00 / Night'),
                      ElevatedButton(
                        child: Text('Book Now'),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/booking'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset('assets/images/hotel.jpg', height: 100),
                      Text('Blue Lagoon',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Rp500.000,00 / Night'),
                      ElevatedButton(
                        child: Text('Book Now'),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/booking'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset('assets/images/hotel.jpg', height: 100),
                      Text('Blue Lagoon',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Rp500.000,00 / Night'),
                      ElevatedButton(
                        child: Text('Book Now'),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/booking'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset('assets/images/hotel.jpg', height: 100),
                      Text('Blue Lagoon',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Rp500.000,00 / Night'),
                      ElevatedButton(
                        child: Text('Book Now'),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/booking'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text, IconData icon, VoidCallback onPressed) {
    return Container(
      width: double.infinity,
      child: ElevatedButton.icon(
        icon: Icon(icon, color: Colors.blue[700]),
        label:
            Text(text, style: TextStyle(fontSize: 16, color: Colors.blue[700])),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 5,
        ),
        onPressed: onPressed,
      ),
    );
  }
}

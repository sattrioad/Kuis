import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'package:tugas1/widget/form_input.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  String namaLengkap = "";
  String email = "";
  String totalRoom = "";
  String totalNight = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Blue Lagoon', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue[300]!, Colors.purple[300]!],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/images/hotel.jpg',
                    width: double.infinity, height: 250, fit: BoxFit.cover),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.white.withOpacity(0.9),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildHeader(),
                          SizedBox(height: 20),
                          _buildForm(),
                          SizedBox(height: 24),
                          _buildButtonSubmit(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Blue Lagoon',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700])),
            Text('Rp500.000,00 / Night',
                style: TextStyle(color: Color.fromARGB(255, 232, 79, 8))),
          ],
        ),
        SizedBox(height: 10),
        Text(
          'Booking Information',
          style: TextStyle(color: Colors.black87),
        ),
      ],
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        FormInput(
          hint: "Masukkan Nama Lengkap",
          label: "Nama",
          onChanged: (value) => setState(() => namaLengkap = value),
        ),
        SizedBox(height: 12),
        FormInput(
          hint: "Masukkan Alamat Email",
          label: "Email",
          onChanged: (value) => setState(() => email = value),
        ),
        SizedBox(height: 12),
        FormInput(
          hint: "Total Room",
          label: "Total Room",
          onChanged: (value) => setState(() => totalRoom = value),
        ),
        SizedBox(height: 12),
        FormInput(
          hint: "Total Night",
          label: "Total Night",
          onChanged: (value) => setState(() => totalNight = value),
        ),
      ],
    );
  }

  Widget _buildButtonSubmit() {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileScreen(
                namaLengkap: namaLengkap,
                email: email,
                totalRoom: totalRoom,
                totalNight: totalNight,
              ),
            ),
          );
        },
        child: Text('Payment'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          textStyle: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

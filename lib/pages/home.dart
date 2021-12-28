import '../widgets/home/booking.dart';
import '../widgets/home/deliveries.dart';
import '../widgets/home/profile.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _changeHomePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget getPage(int index) {
    switch (index) {
      case 0:
        return const Booking();
      case 1:
        return const Deliveries();
      case 2:
        return const Profile();
      default:
        return const Booking();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo/logo_black_transparent.png',
          height: 200,
        ),
        backgroundColor: Colors.teal.shade50,
        foregroundColor: Colors.teal.shade800,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.featured_play_list_rounded),
            label: "Requests",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping_rounded),
            label: "Running",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face_rounded),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => _changeHomePage(index),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/newRequest');
          },
          backgroundColor: Colors.teal,
          child: const Icon(Icons.add)),
      body: getPage(_selectedIndex),
    );
  }
}

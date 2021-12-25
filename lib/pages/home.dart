import '../layout/bottomNavbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delhiverr"),
        backgroundColor: Colors.blueGrey.shade50,
        foregroundColor: Colors.blueGrey.shade800,
      ),
      bottomNavigationBar: BottomNavbar(0),
    );
  }
}

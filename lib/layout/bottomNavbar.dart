import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  int _selectedIndex = 0;

  BottomNavbar(this._selectedIndex, {Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  void _navigate(int index) {
    setState(() {
      widget._selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.domain_verification_rounded),
          label: "Booking",
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
      currentIndex: widget._selectedIndex,
      onTap: (index) => _navigate(index),
    );
  }
}

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget _cardChild;
  const CustomCard(this._cardChild, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: _cardChild,
      elevation: 8,
      color: Colors.green.shade50,
      margin: const EdgeInsets.all(10),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }
}

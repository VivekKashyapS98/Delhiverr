import 'package:flutter/material.dart';

class RequestDetails extends StatelessWidget {
  const RequestDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Request",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.green.shade50,
        foregroundColor: Colors.blueGrey.shade800,
        centerTitle: true,
      ),
    );
  }
}

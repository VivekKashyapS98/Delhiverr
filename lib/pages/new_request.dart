import '../widgets/booking/create_request.dart';
import 'package:flutter/material.dart';

class NewRequest extends StatefulWidget {
  const NewRequest({Key? key}) : super(key: key);

  @override
  _NewRequestState createState() => _NewRequestState();
}

class _NewRequestState extends State<NewRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "New Request",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.teal.shade50,
        foregroundColor: Colors.blueGrey.shade800,
        centerTitle: true,
      ),
      body: const CreateRequest(),
    );
  }
}

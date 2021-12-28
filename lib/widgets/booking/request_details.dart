import 'package:flutter/material.dart';

class RequestDetails extends StatelessWidget {
  const RequestDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as dynamic;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Request ID:" + arguments["id"],
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.green.shade50,
        foregroundColor: Colors.blueGrey.shade800,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const Text(
            "Description: ",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              arguments["description"],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Text(
            "Receier Address: ",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            arguments["toAddress"]["address"],
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              Text(
                arguments["toAddress"]["city"] + " ",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                arguments["toAddress"]["state"],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                " - " + arguments["toAddress"]["pincode"],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Text(
              "Phone No: " + arguments["toAddress"]["phoneNo"],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Text(
            "Sender Address: ",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            arguments["fromAddress"]["address"],
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              Text(
                arguments["fromAddress"]["city"] + " ",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                arguments["fromAddress"]["state"],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                " - " + arguments["fromAddress"]["pincode"],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Text(
              "Phone No: " + arguments["fromAddress"]["phoneNo"],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

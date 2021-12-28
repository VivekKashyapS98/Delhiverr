import 'dart:math';

import 'package:delhiverr/helpers/requests.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateRequest extends StatefulWidget {
  const CreateRequest({Key? key}) : super(key: key);

  @override
  _CreateRequestState createState() => _CreateRequestState();
}

class _CreateRequestState extends State<CreateRequest> {
  final dynamic _newRequest = {
    "id": Random.secure().nextInt(99999).toString(),
    "description": "",
    "customerName": "Vivek Kashyap",
    "fromAddress": {
      "address": "Vivek Kashyap",
      "city": "Bhadravathi",
      "state": "Karnataka",
      "pincode": "577301",
      "phoneNo": "9876543210"
    },
    "toAddress": {
      "receiverName": "",
      "address": "",
      "city": "",
      "state": "",
      "pincode": "",
      "phoneNo": "",
      "isSelf": false
    },
    // "acceptedDrivers": [],
    "containsNodes": false
  };

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        TextField(
          onChanged: (value) {
            setState(() {
              _newRequest['description'] = value;
            });
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Description',
          ),
          minLines: 2,
          maxLines: 5,
        ),
        const Text(
          "Destination Address:",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        TextField(
          onChanged: (value) {
            setState(() {
              _newRequest['toAddress']!['receiverName'] = value;
            });
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Receiver Name',
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: TextField(
            onChanged: (value) {
              setState(() {
                _newRequest['toAddress']!['address'] = value;
              });
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Address/street',
            ),
            minLines: 2,
            maxLines: 5,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 190,
              margin: const EdgeInsets.only(top: 10),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _newRequest['toAddress']['city'] = value;
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'City',
                ),
              ),
            ),
            Container(
              width: 190,
              margin: const EdgeInsets.only(top: 10),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _newRequest['toAddress']['state'] = value;
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'State',
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 190,
              margin: const EdgeInsets.only(top: 10),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _newRequest['toAddress']['pincode'] = value;
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Pincode',
                ),
              ),
            ),
            Container(
              width: 190,
              margin: const EdgeInsets.only(top: 10),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _newRequest['toAddress']['phoneNo'] = value;
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone No.',
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text("Mark the receiver as self"),
            Checkbox(
              value: _newRequest['toAddress']['isSelf'],
              onChanged: (value) {
                setState(() {
                  _newRequest['toAddress']['isSelf'] = value;
                });
              },
            ),
          ],
        ),
        ElevatedButton(
            onPressed: () {
              print(_newRequest);
              Provider.of<Requests>(context, listen: false)
                  .createNewRequest(_newRequest);
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                "Send Request",
                style: TextStyle(fontSize: 17),
              ),
            ))
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CreateRequest extends StatefulWidget {
  const CreateRequest({Key? key}) : super(key: key);

  @override
  _CreateRequestState createState() => _CreateRequestState();
}

class _CreateRequestState extends State<CreateRequest> {
  var newRequest = {
    "id": 2222,
    "customerName": "Vivek Kashyap",
    "fromAddress": {
      "address": "Bus stop, Doddahulluru(v), Hoskote(t)",
      "city": "Bengaluru Rural",
      "state": "Karnataka",
      "pincode": "562114",
      "phoneNo": "9876543210"
    },
    "toAddress": {
      "receiverName": "Somebody",
      "address": "some street, some place",
      "city": "SomeCity",
      "state": "Karnataka",
      "pincode": "543210",
      "phoneNo": "9876543210",
      "isSelf": false
    },
    "acceptedDrivers": [],
    "containsNodes": false
  };

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

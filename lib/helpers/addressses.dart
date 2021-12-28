import 'package:flutter/material.dart';

class Addresses extends ChangeNotifier {
  final dynamic _addresses = {
    "addresses": [
      {
        "address": "Bus stop, Doddahulluru(v), Hoskote(t)",
        "city": "Bengaluru Rural",
        "state": "Karnataka",
        "pincode": "562114",
        "phoneNo": "9876543210"
      }
    ],
    "default": 0
  };

  dynamic get getAddreses {
    return _addresses;
  }

  void addNewAddress(newAddress) {
    _addresses['addresses'].add(newAddress);
  }
}

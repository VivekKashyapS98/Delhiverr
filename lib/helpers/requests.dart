import 'package:flutter/cupertino.dart';

class Requests extends ChangeNotifier {
  final dynamic _requests = [
    {
      "id": "1111",
      "customerName": "Vivek Kashyap",
      "fromAddress": {
        "address": "Bus stop, Doddahulluru(v), Hoskote(t)",
        "city": "Bengaluru Rural",
        "state": "Karnataka",
        "pincode": "562114",
        "phoneNo": "9876543210"
      },
      "toAddress": {
        "receiverName": "Vivek Kashyap",
        "address": "Bus stop, Bhadravathi",
        "city": "Shimoga",
        "state": "Karnataka",
        "pincode": "577301",
        "phoneNo": "9876543210",
        "isSelf": true
      },
      "acceptedDrivers": [
        {
          "driverName": "Himanshu Joshi",
          "vehicleNumber": "KA-02 JE-2129",
          "VehicleName": "Bharath Benz"
        },
        {
          "driverName": "Giri Haran",
          "vehicleNumber": "KA-02 JE-3129",
          "VehicleName": "Ashok Leyland"
        }
      ],
      "createdAt": "25th Dec, 2021",
      "containsNodes": false
    },
    {
      "id": "2222",
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
      "createdAt": "26th Dec, 2021",
      "containsNodes": false
    }
  ];

  dynamic get getRequests {
    return _requests;
  }

  void createNewRequest(newRequest) {
    _requests.add(newRequest);
    notifyListeners();
  }
}

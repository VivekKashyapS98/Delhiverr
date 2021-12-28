import 'package:delhiverr/widgets/reusable/custom_card.dart';
import 'package:flutter/material.dart';

class Deliveries extends StatelessWidget {
  final dynamic _deliveries = [
    {
      "id": "1822",
      "description": "The package contains sensitive items. take it securely.",
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
      "driver": {
        "driverName": "Himanshu Joshi",
        "vehicleNumber": "KA-02 JE-2129",
        "vehicleName": "Bharath Benz"
      },
      "createdAt": "November 29th, 2021",
      "containsNodes": false
    },
    {
      "id": "2684",
      "description": "Urgent delivery required.",
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
      "driver": {
        "driverName": "Giri Haran",
        "vehicleNumber": "KA-53 ED-3129",
        "vehicleName": "Ashok Leyland"
      },
      "createdAt": "December 10th, 2021",
      "containsNodes": false
    }
  ];

  Deliveries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Image.asset(
            'assets/illustrations/6229.jpg',
            width: 350,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 305),
          child: ListView.builder(
              itemCount: _deliveries.length,
              itemBuilder: (context, index) {
                var val = _deliveries[index];
                return CustomCard(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 10, 0, 5),
                            child: Row(
                              children: [
                                const Text(
                                  "Request ID: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(val["id"])
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(15, 0, 0, 15),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.local_shipping_rounded,
                                  color: Colors.blueGrey.shade800,
                                ),
                                Text(
                                  " " + val["driver"]["driverName"],
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          val["driver"]["vehicleNumber"],
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/runningDetails',
                              arguments: val);
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blueGrey,
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}

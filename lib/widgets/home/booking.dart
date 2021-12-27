import '../../widgets/reusable/custom_card.dart';
import '../../helpers/requests.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Booking extends StatelessWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var requests = Provider.of<Requests>(context).getRequests;
    return Column(
      children: [
        Image.asset(
          'assets/illustrations/5229.jpg',
          height: 200,
        ),
        ...requests.map((val) {
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
                      child: Text(
                        "To " + val["toAddress"]["city"],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    val["createdAt"],
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/requestDetails');
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
      ],
    );
  }
}

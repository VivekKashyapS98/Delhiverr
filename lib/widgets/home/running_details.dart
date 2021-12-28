import 'package:delhiverr/widgets/reusable/custom_card.dart';
import 'package:flutter/material.dart';

class RunningDetails extends StatelessWidget {
  const RunningDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as dynamic;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo/logo_black_transparent.png',
          height: 200,
        ),
        backgroundColor: Colors.teal.shade50,
        foregroundColor: Colors.blueGrey.shade800,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Material(
            elevation: 5,
            child: Image.asset(
              'assets/images/maps.png',
              width: 300,
            ),
          ),
          CustomCard(
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Text(
                    arguments["driver"]["driverName"],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        arguments["driver"]["vehicleName"],
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        arguments["driver"]["vehicleNumber"],
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

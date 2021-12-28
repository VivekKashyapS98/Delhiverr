import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 200,
          color: Colors.blueGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Vivek Kashyap",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[50],
                ),
              ),
              const CircleAvatar(
                radius: 80,
                backgroundImage:
                    NetworkImage("https://i.imgur.com/7RE9KFw.jpg"),
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: const Center(
              child: Text(
                "Manage Addresses",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
        const Divider(
          height: 10,
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: const Center(
              child: Text(
                "General Settings",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
        const Divider(
          height: 10,
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}

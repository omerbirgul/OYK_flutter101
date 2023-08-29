import 'package:flutter/material.dart';

import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final String title = "Name";

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 60,
        itemBuilder: (context, index) => _buildUserCard(context, index),
      ),
    );
  }

  Widget _buildUserCard(BuildContext context, int index) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.person,
          color: Colors.deepPurple.shade300,
          size: 40,
        ),
        title: Text(
          "$title ${(index + 1)}",
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
        subtitle: const Text(
          "Surname",
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.arrow_right,
            size: 40,
          ),
          onPressed: () async {
            bool isTrue = await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(
                    appBarTitle: "$title ${(index + 1)}",
                  );
                },
              ),
            );
            print("TRUE MU:  $isTrue");
          },
        ),
      ),
    );
  }
}

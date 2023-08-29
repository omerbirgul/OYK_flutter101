import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/user.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String title = "Name";

  bool isRead = false;

  List<User> userList = List.generate(
      60,
      (index) => User(
          name: "Name: $index",
          surname: "Surname",
          userColor: Colors.green,
          isRead: false));

// *********************************************************
// *********************************************************

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 60,
        itemBuilder: (context, index) => _buildUserCard(context, index),
      ),
      backgroundColor: Colors.deepPurple,
    );
  }

// *********************************************************
// *********************************************************

  Widget _buildUserCard(BuildContext context, int index) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.person,
          color: Colors.deepPurple.shade300,
          size: 40,
        ),
        title: Text(
          userList[index].name,
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
        subtitle: Text(
          userList[index].surname,
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.arrow_right,
            size: 40,
          ),
          onPressed: () async {
            navigateToDetail(context, index);

            setState(() {
              // isRead = true;
              userList[index].isRead = true;
            });
          },
        ),
        tileColor: userList[index].isRead ? Colors.white : Colors.deepPurple.shade100,
      ),
    );
  }

// *********************************************************
// *********************************************************

  Future<void> navigateToDetail(BuildContext context, int index) async {
    bool isTrue = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return DetailScreen(user: userList[index]);
        },
      ),
    );
    print("TRUE MU:  $isTrue");
  }
}

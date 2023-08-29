

import 'package:flutter/material.dart';

import '../model/user.dart';
import 'detail_screen.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String title = "Name";

  bool isRead = false;
  // int randomInt = Random().nextInt(max)
  List<User> userList = List.generate(
    60,
    (index) => User(
      name: "Name $index",
      surname: 'Surname',
      userColor: Colors.green,
      isRead: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) => _buildUserCard(context, index),
      ),
      backgroundColor: Colors.deepPurple,
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
          onPressed: () {
            navigateToDetail(context, index);

            setState(() {
              //   isRead = true;

              userList[index].isRead = true;
            });
          },
        ),
        tileColor:
            userList[index].isRead ? Colors.white : Colors.deepPurple.shade200,
      ),
    );
  }

  Future<void> navigateToDetail(BuildContext context, int index) async {
    bool isTrue = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return DetailScreen(
            user: userList[index],
          );
        },
      ),
    );
    print("TRUE MU:  $isTrue");
  }
}

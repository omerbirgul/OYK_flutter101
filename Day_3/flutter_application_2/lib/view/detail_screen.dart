import 'package:flutter/material.dart';

import '../model/user.dart';

class DetailScreen extends StatelessWidget {
  final User user;

  const DetailScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: user.userColor,
      appBar: AppBar(
        title: Text(
          user.name,
        ),
        automaticallyImplyLeading: false,
      ),



      
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            buildAssetImage(),

            
            ElevatedButton(
              child: Text("Back"),
              onPressed: () {
                Navigator.of(context).pop(false);
                //   Navigator.pop(context, true);
              },
            ),
          ],
        ),
      ),
    );
  }

    Widget buildAssetImage(){

      return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/237-536x354.jpg",
                      ),
                      fit: BoxFit.fitHeight),
                ),
              ),
            );
    }

}

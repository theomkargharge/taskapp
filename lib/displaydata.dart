import 'package:flutter/material.dart';
import 'package:taskapp/userData.dart';

class displayData extends StatefulWidget {
  final UserData userData;
  const displayData({required this.userData, super.key});

  @override
  State<displayData> createState() => _displayDataState();
}

class _displayDataState extends State<displayData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Display data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
                color: Colors.orange, border: Border.all(color: Colors.black)),
            child: Center(
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                ),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.blue)),
                    height: 200,
                    width: 200,
                    child: Column(children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'UserName:- ${widget.userData.userName!.toUpperCase()}',
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Mobile:- ${widget.userData.mobile}',
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Age:- ${widget.userData.age}',
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Password:- ${widget.userData.password}',
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

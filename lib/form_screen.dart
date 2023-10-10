import 'package:flutter/material.dart';
import 'package:taskapp/displaydata.dart';
import 'package:taskapp/userData.dart';

class formScreen extends StatefulWidget {
  final UserData userData;
  const formScreen({required this.userData, super.key});

  @override
  State<formScreen> createState() => _formScreenState();
}

class _formScreenState extends State<formScreen> {
  TextEditingController uname = TextEditingController();
  TextEditingController mob = TextEditingController();
  TextEditingController agee = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Icon(
                Icons.person_outline_rounded,
                color: Colors.blue,
                size: 200,
              ),
              TextFormField(
                controller: uname,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your username',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: mob,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your phone',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: agee,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your age',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: pass,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: double.maxFinite,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => displayData(
                                  userData: UserData(
                                      age: agee.text,
                                      mobile: mob.text,
                                      password: pass.text,
                                      userName: uname.text))));
                    },
                    child: const Text(
                      'Go to next',
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        )),
      ),
    );
  }
}

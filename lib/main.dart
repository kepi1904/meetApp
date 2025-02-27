import 'package:coolmeeeet/zego_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController userName = TextEditingController();
    TextEditingController userID = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cool Meet"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: userName,
                  decoration: InputDecoration(
                      label: Text("Username"), border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: userID,
                  decoration: InputDecoration(
                      label: Text("Input ID Meet"),
                      border: OutlineInputBorder()),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VideoConferencePage(
                                userName: userName.text,
                                conferenceID: userID.text)));
                  },
                  child: const Text("Join"))
            ],
          ),
        ),
      ),
    );
  }
}

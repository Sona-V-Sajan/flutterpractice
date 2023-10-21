import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() {
  runApp(MaterialApp(home: Registr_Shared()));
}
class Registr_Shared extends StatefulWidget {
  @override
  State<Registr_Shared> createState() => _Registr_SharedState();
}

class _Registr_SharedState extends State<Registr_Shared> {
  final name = TextEditingController();
  final uname = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                hintText: "name",
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: uname,
              decoration: InputDecoration(
                hintText: "user name",
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: pass,
              decoration: InputDecoration(
                hintText: "password",
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {

              },
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }

  void saveUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String nname = name.text.trim();
    String usersname = uname.text.trim();
    String passwordss = pass.text.trim();

    // Now, you can save data to SharedPreferences
    prefs.setString("name", nname);
    prefs.setString("username", usersname);
    prefs.setString("password", passwordss);
  }
}

import 'package:flutter/material.dart';
import 'package:flutterpractice/Storage/home_Sharedd.dart';
import 'package:shared_preferences/shared_preferences.dart';



class Login_Pageshared extends StatefulWidget {
  const Login_Pageshared({Key? key}) : super(key: key);

  @override
  State<Login_Pageshared> createState() => _Login_PagesharedState();
}

class _Login_PagesharedState extends State<Login_Pageshared> {
  final UserName = TextEditingController();
  final PassWord = TextEditingController();
  late bool newUser; // check new user
  late SharedPreferences prefs; // object for shared preferences(prefs)

  @override
  void initState() {
    check_user_already_login();
    super.initState();
  }

  void check_user_already_login() async {
    prefs = await SharedPreferences.getInstance();
    newUser = prefs.getBool("firstlogin") ?? true;
    if (!newUser) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home_Shared()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Loginpage")),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: UserName,
                decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: PassWord,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                prefs = await SharedPreferences.getInstance();
                String uname = UserName.text.trim();
                String pass = PassWord.text.trim();
                if (uname.isNotEmpty && pass.isNotEmpty) {
                  prefs.setString("username", uname);
                  prefs.setBool("firstlogin", false);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home_Shared()));
                }
              },
              child: Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}

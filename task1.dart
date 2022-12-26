import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class task1 extends StatefulWidget {
  const task1({super.key});

  @override
  State<task1> createState() => _task1State();
}

class _task1State extends State<task1> {
  TextEditingController emial = TextEditingController();
  TextEditingController password = TextEditingController();
  var a;
  var r;
  var b;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200),
          TextField(
            controller: emial,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                label: Text("Email"),
                hintText: "Enter the  valid email"),
          ),
          SizedBox(height: 20),
          TextField(
            controller: password,
            obscureText: true,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                label: Text("Password"),
                hintText: "Enter the  valid password"),
          ),
          SizedBox(height: 40),
          ElevatedButton(
              onPressed: (() {
                setState(() {
                  b = int.parse(password.text);

                  if (a == "o" || b == 30) {
                    r = "Welcome!!";
                  } else {
                    r = "Error";
                  }
                });
              }),
              child: Text("Login")),
          SizedBox(height: 50),
          Text("status : $r")
        ],
      ),
    );
  }
}

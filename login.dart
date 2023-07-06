import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/pages/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "images/instagram logo.png",
          width: MediaQuery.of(context).size.width * 0.9,
          height: 40,
          fit: BoxFit.fitHeight,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
            vertical: 10,
          ),
          child: TextField(
            controller: username,
            decoration: const InputDecoration(
                fillColor: Color.fromARGB(255, 252, 251, 251),
                focusColor: Colors.black45,
                filled: true,
                hintStyle: TextStyle(fontSize: 12),
                labelStyle: TextStyle(fontSize: 12),
                hintText: "User Name",
                border: OutlineInputBorder(
                    gapPadding: 30,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.black))),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
            vertical: 12,
          ),
          child: TextField(
            keyboardType: TextInputType.text,
            obscureText: true,
            controller: password,
            decoration: const InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                fillColor: Color.fromARGB(255, 255, 255, 255),
                focusColor: Colors.black45,
                filled: true,
                hintStyle: TextStyle(fontSize: 12),
                labelStyle: TextStyle(fontSize: 12),
                hintText: "Password",
                border: OutlineInputBorder(
                    gapPadding: 30,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.black))),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => home()));
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.35,
                vertical: 15,
              ),
              child: const Text("Login"),
            )),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Modabr Aubi"),
        )
      ],
    )));
  }
}

// import 'dart:js';

import 'package:flutter/material.dart';
 import 'package:login/pages/information.dart';
 import 'package:login/data/UserData.dart';
import 'package:login/pages/register.dart';

void main() => runApp(MyProgram());
final TextEditingController userNameController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class MyProgram extends StatelessWidget {
  const MyProgram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My program",
      home: Start(),
    );
  }
}

class Start extends StatefulWidget {
  Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: fullBody(context),
    );
  }
}

Widget fullBody(BuildContext context) {
  return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://t3.ftcdn.net/jpg/02/27/05/44/360_F_227054415_tPcUhVanDLJy4JyLdclBQZJqCdAXs0zc.jpg"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              title(),
              inputUser(),
              inputPassword(),
              options(context)
            ]),
      ));
}

Widget options (BuildContext context){
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      goButton(context),
      SizedBox(
        width: 10,
      ),
      registerButton(context),
    ],
  );
}

Widget title() {
  return Text(
    "Login",
    style: TextStyle(
        color: Colors.white, fontSize: 30, fontStyle: FontStyle.italic),
  );
}

Widget inputUser() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    child: TextField(
      controller: userNameController,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          labelText: "Nombre de usuario:",
          labelStyle: TextStyle(color: Colors.white),
          fillColor: Color.fromARGB(50, 217, 214, 214),
          filled: true),
    ),
  );
}

Widget inputPassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    child: TextField(
      controller: passwordController,
      style: TextStyle(color: Colors.white),
      obscureText: true,
      decoration: InputDecoration(
          labelText: "Contraseña:",
          labelStyle: TextStyle(color: Colors.white),
          fillColor: Color.fromARGB(50, 217, 214, 214),
          filled: true),
    ),
  );
}

Widget goButton(BuildContext context) {


  return Center(
      child: ElevatedButton(
    style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Color.fromARGB(90, 217, 214, 214))),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.login),
        SizedBox(
          width: 7,
        ),
        Text("Ingresar"),
      ],
    ),
    onPressed: () {
      print("Fecha y hora");
      
      DateTime d = DateTime.now();
      print(userNameController.text);
      print(passwordController.text);

      Navigator.push(
          context,
           MaterialPageRoute(builder: (context) => Information(
            ud:
            UserData(
              name: userNameController.text,
              password:passwordController.text,
              lastlogin: "${d}",
              
            ),
            )
          )
      );
    },
  ));
}

Widget registerButton(BuildContext context){
   return Center(
    child: ElevatedButton(
    style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Color.fromARGB(90, 217, 214, 214))),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.app_registration),
        SizedBox(
          width: 7,
        ),
        Text("Registrar"),
      ],
    ),
    onPressed: () {    
      // Navigator.push(
      //     context,
      //      MaterialPageRoute(builder: (context) => Register(
      //       ud:
      //       UserData(
              
      //       ),
      //       )
      //     )
      // );
    },
  ));
}

import 'package:flutter/material.dart';
import 'package:login/data/UserData.dart';
import 'package:login/main.dart';


final TextEditingController nameNameController = TextEditingController();
final TextEditingController passwordNameController = TextEditingController();
final TextEditingController nicknameNameController = TextEditingController();
final TextEditingController ageNameController = TextEditingController();
final TextEditingController genderBNameController = TextEditingController();

class Register extends StatelessWidget{
  
  final UserData? ud;

  const Register({Key? key, this.ud}):super(key: key);
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
              nameUser(),
              passwordUser(),
              nicknameUser(),
              ageUser(),
              genderBUser(),
              registerButton(context)
            ]),
      ));
}

Widget nameUser() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    child: TextField(
      controller: nameNameController,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          labelText: "Nombre de usuario:",
          labelStyle: TextStyle(color: Colors.white),
          fillColor: Color.fromARGB(50, 217, 214, 214),
          filled: true),
    ),
  );
}
Widget passwordUser() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    child: TextField(
      controller: passwordNameController,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          labelText: "Ingrese contraseña:",
          labelStyle: TextStyle(color: Colors.white),
          fillColor: Color.fromARGB(50, 217, 214, 214),
          filled: true),
    ),
  );
}
Widget nicknameUser() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    child: TextField(
      controller: nicknameNameController,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          labelText: "Apodo:",
          labelStyle: TextStyle(color: Colors.white),
          fillColor: Color.fromARGB(50, 217, 214, 214),
          filled: true),
    ),
  );
}
Widget ageUser() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    child: TextField(
      keyboardType: TextInputType.number,
      textAlign: TextAlign.right,
      controller: ageNameController,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          labelText: "Ingrese su edad:",
          labelStyle: TextStyle(color: Colors.white),
          fillColor: Color.fromARGB(50, 217, 214, 214),
          filled: true),
    ),
  );
}

Widget genderBUser() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    child: TextField(
      controller: genderBNameController,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          labelText: "Genero de usuario:",
          labelStyle: TextStyle(color: Colors.white),
          fillColor: Color.fromARGB(50, 217, 214, 214),
          filled: true),
    ),
  );
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
          Icon(Icons.save),
          SizedBox(
            width: 7,
          ),
          Text("Guardar"),
        ],
      ),
      onPressed: () {    
        UserData ud= UserData(
        name: userNameController.text,
        password: passwordController.text,
        nickname: nicknameNameController.text,
        age: int.parse(ageNameController.text),
        genderB: bool.parse(genderBNameController.text)
        
        );
        print(ud.toString());
      },
    )
  );
  
}

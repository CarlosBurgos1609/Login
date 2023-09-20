import 'package:flutter/material.dart';
import 'package:login/data/UserData.dart';

class Information extends StatelessWidget{
  
  final UserData? ud;

  const Information({Key? key, this.ud}):super(key: key);
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("information"),),
      body: Center(child: 
        Column(
          children: [
            Text("information"),
            Text("user name: ${ud?.name}"),
            Text("user password: ${ud?.password}"),
            Text("last login: ${ud?.lastlogin}"),
            ElevatedButton(
                child: Text("Cerrar sesión"),
                onPressed:(){
                  showAlertDialog(context);
                },
                )
          ],
        )
      ),
    );
  }
  void showAlertDialog(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: false,
      
      builder:(BuildContext context){ 
        return AlertDialog(
        title: Text("Cerrar sesión"),
        content: Text("¿Esta seguro que desea cerra la sesión?"),
        actions: [
          TextButton(onPressed: (){
            // Navigator.pop(context);
            // Navigator.pop(context);
            Navigator.popUntil(context,ModalRoute.withName("/"));
          }, child: Text("Si")),

          TextButton(onPressed: (){
            // Navigator.pop(context);
             Navigator.pop(context); 
          }, child: Text("No"))
        ],
        

      );
    }
    );
  }
}
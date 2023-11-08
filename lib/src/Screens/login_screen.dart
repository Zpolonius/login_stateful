import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
 

  
  
   
     
  createState() {
    
    return LoginScreenState();
  }
 
}
 class LoginScreenState extends State<LoginScreen>{
    
  Widget build(context){
      return Container(
        margin: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              emailField(),
              passwordField(),
              //submitButton(),

            ],
          ),),

      );
    }
    Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration:  const InputDecoration(labelText:'Email', hintText: 'test@test.com'));   
   }
   Widget passwordField(){
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(labelText: 'Password', hintText: 'Password1234@'),
      
    );
   }
  // Widget submitButton(){}
  }
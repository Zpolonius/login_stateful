

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

 

  
  
   
     
  createState() {
    
    return LoginScreenState();
  }
 
}
 class LoginScreenState extends State<LoginScreen>{
    
  @override
  Widget build(context){
      return Container(
        
        margin: const EdgeInsets.all(25.0),
         
        child: Form(
          child: Column(
            
            children: [
              emailField(),
              passwordField(),
            Container( margin: const EdgeInsets.all(10),),
              submitButton(),

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
      decoration: const InputDecoration(labelText: 'Password', hintText: 'Password1234@'),
      obscureText: true,
    );
   }
  Widget submitButton(){
    return Container(
      alignment: Alignment.centerRight,
      child: ElevatedButton(onPressed: () => {}, 
      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.lightGreen), 
      elevation: MaterialStatePropertyAll(20.0)), child: const Text('Submit'),
      
       
      ),
    );
  }
  }
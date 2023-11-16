

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

 

  
  
   
     
  @override
  createState() {
    
    return LoginScreenState();
  }
 
}
 class LoginScreenState extends State<LoginScreen>{
    final formKey = GlobalKey<FormState>();

    String email = '';
    String password = '';
    
  @override
  Widget build(context){
      return Container(
        
        margin: const EdgeInsets.all(25.0),
         
        child: Form(
          key: formKey,
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
      decoration:  const InputDecoration(labelText:'Email', hintText: 'test@test.com'),
      validator: (value){
        if (!value!.contains('@')){
          return 'Please enter a valid email';
        }else {
          return null;
        }
        
      },
      onSaved: (value){
        
          print(value);
              },

      );   
   }
   Widget passwordField(){
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      decoration: const InputDecoration(labelText: 'Password', hintText: 'Password1234@'),
      obscureText: true,
      validator: (value){
        if (value!.length < 8){
          return 'Password must contains at least 8 characters';
        }else
        {return null;}
      },
      onSaved: (value){
        
          print(value);
        
      },
    );
   }
  Widget submitButton(){
    return Container(
      alignment: Alignment.centerRight,
      child: ElevatedButton(onPressed: () {
        if (formKey.currentState!.validate()){
        formKey.currentState!.save();
      } },
      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.lightGreen), 
      elevation: MaterialStatePropertyAll(20.0)), child: const Text('Submit'),
      
       
      ),
    );
  }
  }
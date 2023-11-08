import 'Screens/login_screen.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context){
return   MaterialApp(
title: 'Log Me In Please!',
home: Scaffold(
  body: LoginScreen(),
),
);
  }
}
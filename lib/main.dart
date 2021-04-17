import 'file:///C:/Users/mares/AndroidStudioProjects/shinier_project/lib/Pages/login.page.dart';
import 'package:flutter/material.dart';

void main() => runApp(Aplicativo());

class Aplicativo extends StatelessWidget
{
  @override

  //Fazer tela de login
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Tela de Login.',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey),
      home: LoginPage(),
      );
  }
}




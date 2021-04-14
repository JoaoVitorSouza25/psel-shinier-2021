import 'file:///C:/Users/mares/AndroidStudioProjects/shinier_project/lib/Pages/login.page.dart';
import 'package:flutter/material.dart';

void main() => runApp(Aplicativo());

class Aplicativo extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Aplicativo.',
      theme: ThemeData(primarySwatch: Colors.red),
      home: LoginPage(),
      );
  }
}




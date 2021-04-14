//Importando arquivos do material
import 'package:flutter/material.dart';

//Nova classe Login Page
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Fundo da tela
        backgroundColor: Color.fromRGBO(51, 47, 39, 1),

        //Corpo
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                //Caixa para inserir o email
                Container(

                  height: 44,
                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),

                  child: TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(color: Color.fromRGBO(102, 102, 122, 1), fontSize: 20),
                    decoration: InputDecoration(
                        hintText: "Email",
                        labelStyle: TextStyle(color: Color.fromRGBO(102, 102, 122, 1), fontSize: 20)
                    ),
                  ),
                ),

                //Caixa para inserir o email
                Container(
                  height: 44,


                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),

                  child: TextFormField(
                    obscureText: true,
                    cursorColor: Color.fromRGBO(102, 102, 122, 1),
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: new TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                        hintText: "Senha",
                        labelStyle: TextStyle(color: Color.fromRGBO(102, 102, 122, 1), fontSize: 20)
                    ),
                  ),
                ),



                Divider(color: Colors.white,),

                ButtonTheme(
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () => {},
                    child: Text(
                      "Entrar",
                      style: TextStyle(color: Colors.red),
                    ),
                    color: Colors.white,
                  ),

                ),

              ],
            ),
          ),
        )
    );
  }
}
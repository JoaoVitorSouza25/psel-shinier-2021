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

        appBar: AppBar(
          backgroundColor: Color.fromRGBO(51, 47, 39, 1),
          title: Icon(Icons.arrow_back, color: Color.fromRGBO(68, 114, 196, 1)),
        ),

        //Corpo
        body: Padding(
          padding: EdgeInsets.all(30),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                //Frase de Entrar
                Container(
                    child: Text(
                'Entrar',
                style: TextStyle(color: Color.fromRGBO(104, 163, 93, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),

                Divider(height: 5),

                //Botão de esqueci a senha
                Container(
                  child: Text(
                    'Esqueci a senha',
                    style: TextStyle(color: Color.fromRGBO(68, 114, 196, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ),

                Divider(height: 62),

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
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(color: Color.fromRGBO(0, 0, 0, 1),  ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "\t\tEmail",
                        labelStyle: TextStyle(color: Color.fromRGBO(102, 102, 122, 1), fontSize: 13)
                    ),
                  ),
                ),

                Divider(height: 15),

                //Caixa para inserir a senha
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
                    cursorColor: Colors.black,

                    keyboardType: TextInputType.text,
                    style: new TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 13),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "\t\tSenha" ,
                        labelStyle: TextStyle(color: Color.fromRGBO(102, 102, 122, 1), fontSize: 13)
                    ),
                  ),
                ),

                Divider(height: 31),

                //Frase de Usar leitor
                Container(
                  child: Text(
                    'Usar leitor de digital',
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                ),

                Divider(height: 100),

                ButtonTheme(
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () => {},
                    child: Text(
                      "Entrar",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    color: Color.fromRGBO(68, 114, 196, 1),
                  ),

                ),

              ],
            ),
          ),

        );
  }
}
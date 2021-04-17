//Importando arquivos do material
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Nova classe Login Page
class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //Criando a variável booleana value
  bool estado = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Fundo da tela
        backgroundColor: Color.fromRGBO(51, 47, 39, 1),
        resizeToAvoidBottomInset: false,

        //Corpo
        body:
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30, top: 48),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                  //Seta de voltar
                  Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back, color: Color.fromRGBO(68, 114, 196, 1)),
                  ],
                ),

                Divider(height: 34, color: Colors.transparent),

                Text(
                //Frase "Entrar"
                  'Entrar',
                    style: TextStyle(color: Color.fromRGBO(104, 163, 93, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),

                Divider(height: 5, color: Colors.transparent),

                //Botão de esqueci a senha
                Row(
                  children: <Widget>[
                    TextButton(
                      onPressed: ()
                      {
                        showModalBottomSheet<void>(
                          barrierColor: Color.fromRGBO(255, 255, 255, 0.4),
                          backgroundColor: Colors.white,
                          context: context,
                          builder: (BuildContext context)
                          {
                            return Container(

                              child: Container(
                                height:348,

                                child: Padding(
                                  padding: EdgeInsets.only(left: 30, right: 30, top: 10),

                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                        //Detalhe de retangulo
                                        Positioned(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                SizedBox(
                                                  child: Icon(Icons.horizontal_rule_rounded,color: Color.fromRGBO(196, 196, 196, 1)),
                                                  width: 34,
                                                  height: 4,
                                                ),
                                              ]
                                          ),
                                        ),

                                        Divider(height: 26, color: Colors.transparent),

                                        Text(
                                          "Esqueci a senha",
                                          style: TextStyle(color: Color.fromRGBO(51, 47, 39, 1),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 17),
                                        ),

                                        Divider(height: 27, color: Colors.transparent),

                                        Text(
                                          "Informe abaixo o email utilizado em"
                                              "\nseu cadastro para recuperar a senha",
                                          style: TextStyle(color: Color.fromRGBO(51, 47, 39, 1),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13),
                                        ),

                                        Divider(height: 28, color: Colors.transparent),

                                        //Informar o email
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

                                        Divider(height: 58, color: Colors.transparent),

                                        //Apertar em continuar

                                        ButtonTheme(
                                          minWidth: 315,
                                          height: 50.0,
                                          child: RaisedButton(
                                            onPressed: () => {},
                                            child: Text(
                                              "Continuar",
                                              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
                                            ),
                                            color: Color.fromRGBO(68, 114, 196, 1),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(8)
                                            ),
                                          ),
                                        ),

                                      ]
                                  ),

                                ),

                              ),

                            );
                          },

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                          ),


                        );
                      },
                      child: Text(
                        'Esqueci a senha',
                        style: TextStyle(color: Color.fromRGBO(68, 114, 196, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),

                    ),
                  ],
                ),
                Divider(height: 31, color: Colors.transparent),


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
                    style: new TextStyle(color: Color.fromRGBO(0, 0, 0, 1),  ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "\t\tEmail",
                        labelStyle: TextStyle(color: Color.fromRGBO(102, 102, 122, 1), fontSize: 13)
                    ),
                  ),
                ),

                Divider(height: 15, color: Colors.transparent),

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

                Divider(height: 31, color: Colors.transparent),

                //Usar leitor de digital
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: <Widget>[
                    Text(
                      'Usar leitor de digital',
                      style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                     SizedBox(
                       width: 28,
                       height: 15,
                       child: Switch.adaptive(
                            activeColor: Colors.white,
                            activeTrackColor: Color.fromRGBO(68, 114, 196, 1),
                            inactiveTrackColor: Colors.white,
                            value: estado,
                            onChanged: (value) => setState(() => this.estado =  value),

                       ),
                     )

                  ],

                  ),

                Divider(height: 100, color: Colors.transparent),

              //Botão de entrar
                ButtonTheme(
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: ()
                    {
                      showModalBottomSheet<void>(
                        barrierColor: Color.fromRGBO(255, 255, 255, 0.4),
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (BuildContext context)
                        {
                          return Container(

                            child: Container(
                              height:219,

                              child: Padding(
                                padding: EdgeInsets.only(left: 31, right: 30, top: 10),

                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      //Detalhe de retangulo
                                      Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                               Icon(Icons.horizontal_rule_rounded,color: Color.fromRGBO(196, 196, 196, 1)),
                                            ]
                                        ),

                                      Divider(height: 24, color: Colors.transparent),

                                      //Imagem da digital
                                      Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                                Icon(Icons.fingerprint_outlined,color: Color.fromRGBO(51, 47, 39, 1), size: 50),
                                    ]
                                              ),

                                      Divider(height: 13, color: Colors.transparent),

                                      Text(
                                        "Toque no sensor de digital para entrar",
                                        style: TextStyle(color: Color.fromRGBO(51, 47, 39, 1),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13),
                                      ),

                                      Divider(height: 27, color: Colors.transparent),

                                      //Apertar em cancelar
                                      ButtonTheme(
                                        minWidth: 315,
                                        height: 50.0,
                                        child: RaisedButton(
                                          onPressed: () => {},
                                          child: Text(
                                            "Cancelar",
                                            style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
                                          ),
                                          color: Color.fromRGBO(68, 114, 196, 1),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8)
                                          ),
                                        ),
                                      ),

                                    ]
                                ),

                              ),

                            ),

                          );
                        },

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                        ),


                      );
                    },
                    child: Text(
                      "Entrar",
                      style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    color: Color.fromRGBO(68, 114, 196, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),

                ),

              ],
            ),
          ),

        );
  }
}
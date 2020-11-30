import 'package:flutter/material.dart';
import 'package:login/animation/FadeAnimation.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: <Widget>[
              FadeAnimation(1, Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background-login.png'),
                      // Formato da imagem isso distorce ela
                      // fit: BoxFit.cover
                    )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          // margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),),
                          )
                        )),
                      )
                    ],
                  ),
              )),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    FadeAnimation(1, Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(99, 255, 213, .1),
                            blurRadius: 20.0,
                            offset: Offset(0, 10)
                          )
                        ]
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey[100]))
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey[400])
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Senha",
                                hintStyle: TextStyle(color: Colors.grey[400])
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                    SizedBox(height: 30,),
                    FadeAnimation(2, Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(99, 255, 213, 1),
                            Color.fromRGBO(99, 255, 213, .6),
                          ]
                        )
                      ),
                      child: Center(
                        child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      )
                    )),
                    SizedBox(height: 30,),
                    FadeAnimation(1.5,Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(99, 255, 213, 1)),)),
                  ],
                ),
              )
            ],
          ),
        ),
    );    
  }
}
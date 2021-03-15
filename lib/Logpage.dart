import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_doctor/HomePage.dart';
import 'colorScheme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/HomePage': (context) => HomePage()
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.orange[900],
                  Colors.orange[800],
                  Colors.orange[400]
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 88,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login", style: TextStyle(color: Colors.white,fontSize: 40),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Welcome Back !!", style: TextStyle(color: Colors.white,fontSize: 18),)
                ],
              ),
            ),
            SizedBox( height: 17,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color:Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, 3),
                                blurRadius: 20,
                                offset: Offset(0,10),
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Email or Phone number",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      Text("Forgot Password?", style: TextStyle(
                        color: Colors.grey,
                      ),),

                      SizedBox(height: 40,),
                      FlatButton(
                        color: Colors.transparent,

                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange[900]
                          ),
                          child: Center(
                            child: Text("Login",style: TextStyle(color:Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),

                          ),
                        ),onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },

                      ),

                      SizedBox(height: 20,),
                      Text("Continue with social media", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 23,),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue
                              ),
                              child: Center(
                                child: Text("Facebook", style: TextStyle(color: Colors.white,fontSize: 14, fontWeight: FontWeight.bold),),
                              ),

                            ),
                          ),
                          SizedBox(width: 30,),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.black
                              ),
                              child: Center(
                                child: Text("Google", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  /*void openHomePage()
  {
    Navigator.pushNamed(context,'/HomePage');
  }*/
}


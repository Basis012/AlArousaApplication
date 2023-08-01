import 'package:beautyapplication/Screens/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Signup.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE92E94),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: Card(
                    elevation: 15,
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          margin: EdgeInsets.only(top: 30),
                          child: Lottie.asset('assets/login.json',animate: true),
                        ),
                        Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
                        Container(
                          margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("EMAIL",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12),),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: TextFormField(
                                  controller: email,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.email),
                                      hintText: '@gmail.com',
                                      label: Text('Enter your email'),
                                      border: OutlineInputBorder()
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("PASSWORD",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12),),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: TextFormField(
                                  controller: password,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(Icons.remove_red_eye),
                                      prefixIcon: Icon(Icons.lock),
                                      hintText: '********',
                                      label: Text('Enter your password'),
                                      border: OutlineInputBorder()
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                            },
                            child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 14),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 20),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Dont Have an account',style: TextStyle(color: Colors.black,fontSize: 13),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text('Signup',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

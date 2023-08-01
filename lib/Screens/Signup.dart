import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Login.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
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
                        Text("Signup",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
                        Container(
                          margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("USERNAME",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12),),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: TextFormField(
                                  controller: name,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.person),
                                      hintText: 'abc',
                                      label: Text('Enter your name'),
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
                              Text("Password",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12),),
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("CONFIRM PASSWORD",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12),),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: TextFormField(
                                  controller: confirmpassword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(Icons.remove_red_eye),
                                      prefixIcon: Icon(Icons.lock),
                                      hintText: '********',
                                      label: Text('confirm password'),
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
                            },
                            child: Text('Signup',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 14),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 20),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Already Have an account',style: TextStyle(color: Colors.black,fontSize: 13),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text('Signin',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
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

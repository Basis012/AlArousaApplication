import 'package:beautyapplication/Screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
              Container(
                child: Lottie.asset('assets/splash.json',animate: true),
              )
           ],
         ),
    );
  }
}

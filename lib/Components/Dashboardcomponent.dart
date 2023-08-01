import 'package:beautyapplication/Screens/DashboardDetailsScreen.dart';
import 'package:flutter/material.dart';
class Dashboardcomponent extends StatelessWidget {
  Dashboardcomponent({super.key,required this.title,required this.image});
  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardDetailsScreen(
           title: title,
           image: image,
         )));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          child: Card(
            child: Column(
               children: [
                 Container(
                     color: Color(0xffE92E94),
                   height: 40,
                   alignment: Alignment.center,
                   width: double.infinity,
                   child: Text(title,style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)
                 ),
                 Expanded(
                   child: Container(
                     width: double.infinity,
                     child: Image.network(image,fit: BoxFit.cover,),),
                 )
                 // Text("Beauty and spa centers",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)
               ],
            ),
          ),
        ),
      ),
    );
  }
}

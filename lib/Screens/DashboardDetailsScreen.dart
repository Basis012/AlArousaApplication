import 'package:flutter/material.dart';
class DashboardDetailsScreen extends StatefulWidget {
  DashboardDetailsScreen({super.key,required this.title,required this.image});
  String title;
  String image;

  @override
  State<DashboardDetailsScreen> createState() => _DashboardDetailsScreenState();
}

class _DashboardDetailsScreenState extends State<DashboardDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffE92E94),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
              ),
               Container(
                 height: 220,
                 width: double.infinity,
                 margin: EdgeInsets.only(left: 10,right: 10,top: 20),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(25),
                   child: Card(
                     child: Image.network(widget.image,fit: BoxFit.cover,),
                   ),
                 ),
               ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 15,right: 10),
                child: Text('survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',style: TextStyle(color: Colors.black,fontSize: 13,letterSpacing: 2),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

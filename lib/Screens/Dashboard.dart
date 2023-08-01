import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:beautyapplication/Components/Dashboardcomponent.dart';
import 'package:flutter/material.dart';
import '../ModelClass/DashboardModelClass.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

    List<DashboardModelClass> data = [
      DashboardModelClass("Spa Centers", 'https://images.unsplash.com/photo-1596462502278-27bfdc403348?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80'),
      DashboardModelClass("Cosmetologist", 'https://images.unsplash.com/photo-1453761816053-ed5ba727b5b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDh8fGJlYXV0eSUyMHNlcnZpY2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
      DashboardModelClass("Photographer", 'https://bridalhub.net/elarousa/admin/uploads/categories_images/1498663483.jpg'),
      DashboardModelClass("Flower Shops", 'https://bridalhub.net/elarousa/admin/uploads/categories_images/1498669751.jpg'),
      DashboardModelClass("Hairdresser", 'https://bridalhub.net/elarousa/admin/uploads/categories_images/1498671176.jpg'),
      DashboardModelClass("Parties Coordinator", 'https://bridalhub.net/elarousa/admin/uploads/categories_images/1498669805.jpg'),
      DashboardModelClass("Henna Night", 'https://bridalhub.net/elarousa/admin/uploads/categories_images/1498672907.jpg'),
      DashboardModelClass("Wedding Dresses", 'https://bridalhub.net/elarousa/admin/uploads/categories_images/1498672509.jpg'),
    ];

    List<DashboardModelClass> filteredData = [];
    final FocusNode _focusNode = FocusNode();
    @override
  void initState() {
    // TODO: implement initState
      filteredData = List.from(data);
    super.initState();

  }
    @override
  void dispose() {
    // TODO: implement dispose
      _focusNode.dispose();
    super.dispose();
  }
    void filterData(String query) {
      setState(() {
        filteredData = data
            .where((item) =>
            item.title.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body: SingleChildScrollView(
           child: Column(
             children: [
              Container(
                margin: EdgeInsets.only(left: 10,right: 10,top: 30),
                height: 160,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: AnotherCarousel(images: [
                    NetworkImage('https://images.unsplash.com/photo-1528740561666-dc2479dc08ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGJlYXV0eSUyMHNlcnZpY2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
                    NetworkImage('https://images.unsplash.com/photo-1502139214982-d0ad755818d8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fGJlYXV0eSUyMHNlcnZpY2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
                    NetworkImage('https://images.unsplash.com/photo-1522338242992-e1a54906a8da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTZ8fGJlYXV0eSUyMHNlcnZpY2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
                    NetworkImage('https://images.unsplash.com/photo-1522337660859-02fbefca4702?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTN8fGJlYXV0eSUyMHNlcnZpY2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
                    NetworkImage('https://images.unsplash.com/photo-1512496015851-a90fb38ba796?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjV8fGJlYXV0eSUyMHNlcnZpY2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
                  ],
                  dotSize: 6,
                    indicatorBgPadding: 5.0,
                    boxFit: BoxFit.cover,
                   dotBgColor: Colors.transparent,


                  ),
                ),
              ),
               ClipRRect(
                 borderRadius: BorderRadius.circular(25),
                 child: Card(
                   margin: EdgeInsets.only(left: 10,right: 10,top: 20),
                   elevation: 15,
                   child: TextField(
                     onChanged: (value) => filterData(value),
                     decoration: InputDecoration(
                       hintText: 'Search Here',
                       prefixIcon: Icon(Icons.search), // Center the icon vertically
                       prefixText: ' ', // Add a space to separate the icon and text
                       prefixStyle: TextStyle(color: Colors.transparent), // Hide the space
                       contentPadding: EdgeInsets.symmetric(vertical: 14), // Adjus
                     ),
                   ),
                 ),
               ),
               Container(
                 margin: EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
                 child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2, // Number of columns in the grid
                   crossAxisSpacing: 8.0, // Spacing between columns
                   mainAxisSpacing: 20, // Spacing between rows
                 ), itemCount: filteredData.length,
                     itemBuilder: (context,index){
                     return Dashboardcomponent(
                       title: filteredData[index].title,
                       image: filteredData[index].image,
                     );
                 },
                 shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                 ),
               )
             ],
           ),
         ),
      ),
    );
  }
}

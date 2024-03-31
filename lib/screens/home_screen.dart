import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<String> categories = ["All","Chairs","Sofas","Tables","Beds"];

  int activeIndex = 2;

  List<Map<String,dynamic>> navItems = [
    {'icon': Icons.location_city_rounded,'color': Colors.black54},
    {'icon': Icons.compass_calibration,'color': Colors.black54},
    {'icon': Icons.bookmark,'color': Colors.black54},
    {'icon': Icons.mail,'color': Colors.black54},
    {'icon': Icons.person,'color': Colors.black54},
  ];


  Widget getCategories(int index){
    return GestureDetector(
        onTap: (){
          setState(() {
            selectedIndex = index;
          });
        },
      child: Container(
        margin: EdgeInsets.only(top: 2,bottom: 2,right:20 ),
        width: 120,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedIndex == index ? Colors.indigo: Colors.transparent,width: 1.5
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF7EE8),
              blurRadius: 1,
              offset: Offset(2.6,2.6),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            bottomLeft: Radius.circular(35),
            
          ),
        ),
        child: Center(
          child: Text(categories[index],
          style: TextStyle(fontSize: 19)),
        ),
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: SafeArea(
        child: SingleChildScrollView(

        ),
      ),
    );
  }
}

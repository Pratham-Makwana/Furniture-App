import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:furniture_app/model/category_model.dart';
import 'package:furniture_app/widgets/grid_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<String> categories = ["All", "Chairs", "Sofas", "Tables", "Beds"];

  int activeIndex = 2;

  List<Map<String, dynamic>> navItems = [
    {'icon': Icons.location_city_rounded, 'color': Colors.black54},
    {'icon': Icons.compass_calibration, 'color': Colors.black54},
    {'icon': Icons.bookmark, 'color': Colors.black54},
    {'icon': Icons.mail, 'color': Colors.black54},
    {'icon': Icons.person, 'color': Colors.black54},
  ];

  Widget getCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(top: 2, bottom: 2, right: 20),
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
              color: selectedIndex == index ? Colors.white : Colors.transparent,
              width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFE7EEF8),
              blurRadius: 1,
              offset: Offset(2.6, 2.6),
            ),
          ],
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(45),
        ),
        child: Center(
          child: Text(categories[index],
              style: TextStyle(fontSize: 19, color: Colors.white)),
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
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                // Custom APP Bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0.6, 0.6),
                              blurRadius: 4,
                              color: Color(0xFFE7EEF8),
                            ),
                          ],
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.6, 0.6),
                                  blurRadius: 4,
                                  color: Color(0xFFE7EEF8),
                                ),
                              ],
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Icon(
                              Icons.local_grocery_store,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.6, 0.6),
                                  blurRadius: 4,
                                  color: Color(0xFFE7EEF8),
                                ),
                              ],
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                // Custom Search Bar
                Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.only(left: 20, right: 15),
                  height: 55,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFE7EEF8),
                        blurRadius: 1,
                        offset: Offset(2.6, 2.6),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(45),
                    border: Border.all(color: Colors.indigo, width: 2),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.filter_alt_rounded),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Categories List View
                Container(
                  height: 45,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: categories
                        .asMap()
                        .entries
                        .map((MapEntry map) => getCategories(map.key))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // Item Gris View Using flutter_staggered_grid_view
                StaggeredGrid.count(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: categoriesGrid.asMap().entries.map((MapEntry map) {
                    int index = map.key;
                    return GestureDetector(
                      onTap: () {},
                      child: GridItems(index),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CircleNavBar(
          onTap: (index) {
            setState(() {
              activeIndex = index;
            });
          },
          activeIndex: activeIndex,
          activeIcons: List.generate(
              navItems.length,
              (index) => Icon(
                    navItems[index]['icon'],
                    color: index == activeIndex ? Colors.white : Colors.black54,
                  )),
          inactiveIcons: List.generate(
              navItems.length,
              (index) => Icon(navItems[index]['icon'],
                  color: index == activeIndex ? Colors.white : Colors.black87)),
          height: 60,
          circleWidth: 60,
          color: Colors.indigo),
    );
  }
}

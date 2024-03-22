import 'package:flutter/material.dart';
import 'package:the_digital_shop/view/AddShopPage.dart';
import 'package:the_digital_shop/view/FollowListPage.dart';
import 'package:the_digital_shop/view/HomePage.dart';
import 'package:the_digital_shop/view/Widgets/drawerhead.dart';
import 'package:the_digital_shop/view/Widgets/drawerlist.dart';
import 'package:the_digital_shop/view/profilepage.dart';
import 'package:the_digital_shop/view/searchpage.dart';
import 'package:the_digital_shop/view/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(255, 31, 243, 38),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  List<Widget> widgetList = const [
    HomePage(),
    SearchPage(),
    AddShopPage(),
    FollowListPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: const Column(
              children: [
                MyDrawerHead(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: widgetList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
              ),
              label: "create"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star_outlined,
              ),
              label: "follow"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
              ),
              label: "profile"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

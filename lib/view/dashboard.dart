import 'package:flutter/material.dart';import 'package:riafy_flutter_app/view/home_view.dart';class DashBoard extends StatefulWidget {  @override  _DashBoardState createState() => _DashBoardState();}class _DashBoardState extends State<DashBoard> {  int _selectedIndex = 0;  List<Map> title = [    {      'title': 'home',      'icon': Icon(Icons.home),      'outline': Icon(Icons.home_outlined)    },    {      'title': 'feed',      'icon': Icon(Icons.search),      'outline': Icon(Icons.search_outlined)    },    {      'title': 'feed',      'icon': Icon(Icons.add_circle),      'outline': Icon(Icons.add_circle_outline)    },    {      'title': 'feed',      'icon': Icon(Icons.favorite),      'outline': Icon(Icons.favorite_border_outlined)    },    {      'title': 'feed',      'icon': Icon(Icons.person),      'outline': Icon(Icons.person_outline)    },  ];  @override  Widget build(BuildContext context) {    return Scaffold(        bottomNavigationBar: BottomNavigationBar(          showSelectedLabels: false,          showUnselectedLabels: false,          items: List.generate(            title.length,            (index) => BottomNavigationBarItem(              icon: title[index][_selectedIndex == index ? 'icon' : 'outline'],              label: '',            ),          ),          currentIndex: _selectedIndex,          selectedItemColor: Colors.black,          unselectedItemColor: Colors.black,          onTap: _onItemTapped,        ),        body: _selectedIndex == 0 ? HomePage() : Container());  }  void _onItemTapped(int index) {    setState(() {      _selectedIndex = index;    });    print(_selectedIndex);  }}
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final _pageWidgets = [
    PageWidget(color: Colors.white, title: 'fitness'),
    PageWidget(color: Colors.blue, title: 'Chart'),
    PageWidget(color: Colors.orange, title: 'Account'),
    PageWidget(color: Color.fromARGB(255, 0, 255, 38), title: 'Goal'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
      ),
      body: _pageWidgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'fitness'),
          BottomNavigationBarItem(icon: Icon(Icons.insert_chart_outlined_outlined), label: 'Chart'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.accessibility), label: 'Goal'),
        ],
        currentIndex: _currentIndex,
        fixedColor: const Color.fromARGB(255, 0, 0, 0),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    )
    );
    
    
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class PageWidget extends StatelessWidget {
  final Color color;
  final String title;

  const PageWidget({
    Key? key,
    required this.color,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MainPage(),
  ));
}

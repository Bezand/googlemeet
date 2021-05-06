import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PageCourses()));
                },
                icon: Icon(Icons.home),
                label: Text('Курсы')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.calendar_today),
                label: Text('Курсы')),
            DrawerHeader(child: Text('курсы, которых я являюсь')),
          ],
        ),
      ),
      body: Column(),
    );
  }
}

class PageCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Курсы'),
      ),
    );
  }
}

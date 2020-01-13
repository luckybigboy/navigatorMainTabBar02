import 'package:flutter/material.dart';
import 'each_page.dart';

class navigatorMainTabbar extends StatefulWidget {
  @override
  _navigatorMainTabbarState createState() => _navigatorMainTabbarState();
}

class _navigatorMainTabbarState extends State<navigatorMainTabbar> {
  List<Widget> _eachPage;
  int _currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _eachPage = List();
    _eachPage..add(EachPage('home'))..add(EachPage('email'));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: _eachPage[_currentIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return EachPage('new Page');
            }));
          },
          tooltip: 'add',
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightBlue,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.lightBlue,
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.email),
                color: Colors.lightBlue,
                onPressed: () {
                  _currentIndex = 1;
                },
              )
            ],
          ),
        ));
  }
}

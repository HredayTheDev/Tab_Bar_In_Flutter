import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/screens/FirstTab.dart';
import 'package:flutter_tab_bar/screens/SecondTab.dart';
import 'package:flutter_tab_bar/screens/ThirdTab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.amber,
              title: Text(" This Is Tabbar",style: TextStyle(color: Colors.white),),
              centerTitle: true,
              
              bottom: TabBar(
                tabs: [
                  Text(
                    "Tab 1",
                    style: TextStyle(fontSize: 22,color: Colors.white),
                    
                  ),
                  Text(
                    "Tab 2",
                    style: TextStyle(fontSize: 22,color: Colors.white),
                  ),
                  Text(
                    "Tab 3",
                    style: TextStyle(fontSize: 22,color: Colors.white),
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [FirtsTab(), SecondTab(), ThirdTab()],
            ),
          ),
        ));
  }
}

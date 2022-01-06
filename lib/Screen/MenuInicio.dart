import 'package:appbar_example/Class/smsClass.dart';
import 'package:appbar_example/main.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SimpleAppBarPage extends StatefulWidget {
  @override
  _SimpleAppBarPageState createState() => _SimpleAppBarPageState();
}

class _SimpleAppBarPageState extends State<SimpleAppBarPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(MyApp.title),
            //centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            //backgroundColor: Colors.purple,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.indigo[600], Colors.lightBlueAccent],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: TabBar(
              //isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(icon: Icon(LineAwesomeIcons.car), text: 'Vehiculo 1'),
                Tab(icon: Icon(LineAwesomeIcons.car), text: 'Vehiculo 2'),
                Tab(icon: Icon(LineAwesomeIcons.car), text: 'Vehiculo 3'),
                Tab(icon: Icon(LineAwesomeIcons.car), text: 'Vehiculo 4'),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          body: TabBarView(
            children: [
              Mensajeria(),
              buildPage('Feed Page'),
              buildPage('Profile Page'),
              buildPage('Settings Page'),
            ],
          ),
        ),
      );

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
}

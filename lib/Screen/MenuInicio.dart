//import 'package:appbar_example/Class/UserPreferences.dart';
import 'package:appbar_example/Class/Vehiculo1Class.dart';
import 'package:appbar_example/Class/Vehiculo2Class.dart';
import 'package:appbar_example/Class/Vehiculo3Class.dart';
import 'package:appbar_example/Class/Vehiculo4Class.dart';
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
                  colors: [Colors.grey[900],Colors.grey[850], Colors.grey[700]],
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
              Vehiculo1(),
              Vehiculo2(),
              Vehiculo3(),
              Vehiculo4()
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

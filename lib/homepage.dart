import 'package:f4or/widgets/categoryselector.dart';
import 'package:f4or/widgets/favourateContacts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'widgets/recentChats.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 25,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            'Live It',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 25,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: <Widget>[
                  FavourateContacts(),
                  RecentChats(),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        overlayColor: Colors.black,
        overlayOpacity: 0.3,
        closeManually: false,
        backgroundColor: Colors.red,
        children: [
          SpeedDialChild(
            child: Icon(Icons.camera_alt),
            backgroundColor: Colors.red,
            label: 'camera',
            onTap: () {},
          ),
          SpeedDialChild(
            child: Icon(Icons.call),
            backgroundColor: Colors.red,
            label: 'calls',
            onTap: () {},
          ),
          SpeedDialChild(
            child: Icon(Icons.message),
            backgroundColor: Colors.red,
            label: 'message',
            onTap: () {},
          )
        ],
      ),
    );
  }
}

import 'dart:html';

import 'package:flutter/material.dart';

class status extends StatefulWidget {
  // const status({ Key? key }) : super(key: key);

  @override
  State<status> createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/tst.png'),
          ),
          title: Text('My Status',
           style: TextStyle(color: Colors.white),
          ),
          subtitle: Text('Yesterday 8:30 PM', 
          style: TextStyle(color: Colors.white54),
          ),
          trailing: Icon(Icons.more_horiz_rounded, size: 20,
          color: Colors.white54,
          ),
        ),
        Text('Viewed Updates', 
        style: TextStyle(color: Colors.white54),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/ima.jpg'),
          ),
          title: Text('Linta Noor',
          style: TextStyle(color: Colors.white),
          ),
          subtitle: Text('Today, 8:30 AM', 
          style: TextStyle(color: Colors.white54),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/xyz.jpg'),
          ),
          title: Text('Asnat Mughal',
          style: TextStyle(color: Colors.white),
          ),
          subtitle: Text('48 minutes ago', 
          style: TextStyle(color: Colors.white54),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/asd.jpg'),
          ),
          title: Text('Iqra Khan',
          style: TextStyle(color: Colors.white),
          ),
          subtitle: Text('Yesterday, 10:00 PM', 
          style: TextStyle(color: Colors.white54),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/bjk.jpg'),
          ),
          title: Text('Urida Abro',
          style: TextStyle(color: Colors.white),
          ),
          subtitle: Text('5 minutes ago', 
          style: TextStyle(color: Colors.white54),
          ),
        ),
      ],
    );
  }
}
import 'dart:html';

import 'package:flutter/material.dart';

class calls extends StatefulWidget {
  // const calls({ Key? key }) : super(key: key);

  @override
  State<calls> createState() => _callsState();
}

class _callsState extends State<calls> {
  @override
  var image = [
    'assets/cad.jpg',
    'assets/pic.png',
    'assets/cap.png',
  ];

  var name = [
    'Asnat Mughal',
    'Iqra Khan',
    'Linta Noor',    
  ];

  var time = [
    'Just now',
    'Today 4:08',
    '25, April, 12:34 AM',
  ];

Widget build(BuildContext context) {
  return ListView.builder(
    itemCount: name.length,
    itemBuilder: (context,ind) {
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(image[ind]),
        ),
          title: Text(name[ind],
          style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.arrow_downward, color: Colors.red,
              ),
              SizedBox(width: 10,
              ),
              Text(time[ind],
              style: TextStyle(color: Colors.white54),
              ),
            ],
          ),
          trailing: Icon(Icons.call, color: Colors.green[800],
          ),
        );
      }
    );
  }
}
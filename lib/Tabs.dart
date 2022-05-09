import 'dart:html';

import 'package:flutter/material.dart';
import 'package:whatsappgui/calls.dart';
import 'package:whatsappgui/chats.dart';
import 'package:whatsappgui/status.dart';

class Tabs extends StatefulWidget {
  // const Tabs({ Key? key }) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp', 
          style: TextStyle(fontSize: 20),
          ),
          backgroundColor: Colors.black,
          actions: [
            Icon(Icons.search_rounded, 
            size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert_rounded, 
            size: 20,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: TabBar(
            tabs: [
              // Icon(Icons.camera_alt_rounded, size:20, color: Colors.grey[400]),
              Text('Chats'),
              Text('Status'),
              Text('Calls'),
            ]),
          ),
          backgroundColor: Colors.black,
          body: TabBarView(children: [chats(), status(), calls()]),
    ));
  }
}
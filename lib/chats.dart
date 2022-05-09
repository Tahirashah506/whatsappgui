import 'dart:ui';

import 'package:flutter/material.dart';

class chats extends StatefulWidget {
  // const chats({ Key? key }) : super(key: key);

  @override
  State<chats> createState() => _chatsState();
}

class _chatsState extends State<chats> {
  @override
 var image = [
'assets/nmd.jpg',
'assets/pic.png',
'assets/cap.png',
'assets/tst.png',
'assets/qws.jpg',
'assets/tah.jpg',
'assets/cad.jpg',
'assets/zxc.jpg',
 ];
 var name = [
  'Mam Naila',
  'Iqra Khan',
  'Linta Noor',
  'Tahira Shah',
  'Urida Abro',
  'Hafsa Butt',
  'Asnat Mughal',
  'Maham Sheikh',
 ];
 var lastmsg = [
  'Asslam-O-Alikum',
  'What Are You Doing',
  'Nothing Special',
  'Hello',
  'Happy Birthday',
  'Today I Am Going TO Market',
  'Okay',
  'Allah Hafiz',
 ];
 var time = [
   'Yesterday',
   '11:30 Pm',
   'Today',
   '1/2/22',
   '4:15 Pm',
   'Yesterday',
   '23/3/22',
   'Today',
 ];
 Widget build(BuildContext context) {
   return ListView.builder(itemCount: name.length,
   itemBuilder: (context, ind) {
     return ListTile(
       leading: CircleAvatar(
         backgroundImage: AssetImage(image[ind]),
       ),
       title: Text(name[ind],
       style: TextStyle(fontSize: 15, color: Colors.white), 
       ),
       subtitle: Row(
         children: [
           Icon(Icons.done_all_sharp, size: 15,
           color: Colors.blue[300],
           ),
           SizedBox(
             width: 10,
           ),
           Text(lastmsg[ind],
           style: TextStyle(color: Colors.white54),
           ),
         ],
       ),
       trailing: Text(time[ind],
       style: TextStyle(color: Colors.white54),
      ),
     );
    },
   );
  }
}
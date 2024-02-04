import 'package:flutter/material.dart';

class ChatState extends StatefulWidget {
  const ChatState({super.key});

  @override
  State<ChatState> createState() => _ChatStateState();
}

class _ChatStateState extends State<ChatState> {
  int selectedIndex = 0;
  final List<String> state = ['Messages', 'Online', 'Groups', 'Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: state.length,
        itemBuilder: (BuildContext context,int index) {
         return GestureDetector(
           onTap: (){
             setState(() {
               selectedIndex = index;
             });

           },
           child: Padding(
             padding: const EdgeInsets.symmetric(
               vertical: 30.0,
               horizontal: 20.0
             ),
             child: Text(state[index],
               style: TextStyle(
                 letterSpacing: 1.2,
                   fontSize: 25.0,
                 fontWeight: FontWeight.bold,
                 color: index == selectedIndex ? Colors.white: Colors.white60),

             ),
           ),
         );
      }
      ),
      );
  }
}
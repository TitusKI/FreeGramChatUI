import 'package:flutter/material.dart';
import '../../widgets/chatstate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        
        leading: IconButton(icon: const Icon(Icons.menu), iconSize: 30.0,color: Colors.white,onPressed: (){}),


        backgroundColor:Colors.red,
        title: const Center(child: Text(
          'Chats',
          
          textAlign: TextAlign.center,
          style: TextStyle(fontSize:28.0,color: Colors.white,
          fontWeight: FontWeight.bold ),
        ) ,
        
        ),
        elevation: 0.0,
        actions: <Widget>[IconButton(icon: const Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: (){}),
],
      ),
      body:  Column(
          children: [
            ChatState(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).highlightColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)
                  ),
              ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text('Favorite Contacts'),
                        IconButton(onPressed: (){},
                            icon: const Icon(Icons.more_horiz),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:freegram/widgets/favoritecontact.dart';
import '../../widgets/chatstate.dart';
import '../../widgets/recentchats.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
            const ChatState(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).highlightColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)
                  ),
              ),
                child: const Column(
                  children: [
                      FavoriteContact(),
                      RecentChat(),
                      ],
                    )

                ),
              ),


          ],
        ),
    );
  }
}
import 'package:flutter/material.dart';
import '../src/models/message_model.dart';
import '../src/screens/chat_screen.dart';

class FavoriteContact extends StatelessWidget {
  const FavoriteContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Favorite Contacts',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      letterSpacing: 1.2,
                      color: Colors.blueGrey),
                ),
                IconButton(
                  onPressed: () {},
                  color: Colors.blueGrey,
                  icon: const Icon(Icons.more_horiz),
                )
              ],
            ),
          ),
          Container(
            height: 120,
            color: Theme.of(context).highlightColor,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        user: favorites[index],
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage:
                              AssetImage(favorites[index].imageUrl),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          favorites[index].name,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ], //children
      ),
    );
  }
}

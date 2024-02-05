import 'package:flutter/material.dart';
import 'package:freegram/src/screens/chat_screen.dart';

import '../src/models/message_model.dart';

class RecentChat extends StatelessWidget {
  const RecentChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, int index) {
                final Message chat = chats[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        user: chat.sender,
                      ),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5, right: 20),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color:
                          chat.unread ? const Color(0xFFFFEFEE) : Colors.white,
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          topRight: Radius.circular(20.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage(chat.sender.imageUrl),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chat.sender.name,
                                  style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: Text(
                                    chat.text,
                                    style: const TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              chat.time,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            chat.unread
                                ? Container(
                                    height: 20,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(35.0)),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'New',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ))
                                : Text(" ")
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

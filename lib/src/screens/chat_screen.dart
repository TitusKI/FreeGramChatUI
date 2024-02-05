import 'package:flutter/material.dart';

import 'package:freegram/src/models/user_model.dart';
import '../models/message_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.user});

  final User user;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    final Container msg = Container(
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
      margin: isMe
          ? const EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
              left: 80.0,
            )
          : const EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
      decoration: BoxDecoration(
          color: isMe ? Theme.of(context).highlightColor : Color(0xFFFFEFEE),
          borderRadius: isMe
              ? const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0))
              : BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.time,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.grey),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(message.text),
        ],
      ),
    );
    if (isMe) {
      return msg;
    }
    return Row(
      children: [
        msg,
        !isMe
            ? IconButton(
                icon: message.isLiked
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_border),
                iconSize: 20.0,
                color: message.isLiked
                    ? Theme.of(context).primaryColor
                    : Colors.blueGrey,
                onPressed: () {},
              )
            : SizedBox.shrink(),
      ],
    );
  }

  _buildMessageWrite() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.0),
      color: Colors.white,
      height: 70,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo),
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              decoration: InputDecoration.collapsed(
                hintText: 'Message',
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
            color: Theme.of(context).primaryColor,
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_sharp),
              iconSize: 20.0,
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pop();
              }),
          backgroundColor: Theme.of(context).primaryColor,
          title: Center(
            child: Text(
              widget.user.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0),
            ),
          ),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.more_horiz),
                iconSize: 30.0,
                color: Colors.white,
                onPressed: () {}),
          ]),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                  child: ListView.builder(
                      reverse: false, // for reversing the listview
                      padding: EdgeInsets.only(top: 15.0),
                      itemCount: chats.length,
                      itemBuilder: (context, int index) {
                        final Message message = chats[index];
                        final bool isMe = message.sender.id == currentUser.id;
                        return _buildMessage(message, isMe);
                      }),
                ),
              ),
            ),
            _buildMessageWrite(),
          ],
        ),
      ),
    );
  }
}

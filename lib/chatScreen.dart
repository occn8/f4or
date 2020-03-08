import 'package:f4or/models/message_model.dart';
import 'package:f4or/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    final Container msg = Container(
      margin: isMe
          ? EdgeInsets.only(top: 8, bottom: 8, left: 80)
          : EdgeInsets.only(top: 8, bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: isMe
          ? BoxDecoration(
              color: Color(0xFFFFEFEE),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ))
          : BoxDecoration(
              color: Color(0xFFFFEFEE),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message.time,
            style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
          SizedBox(height: 5),
          Text(
            message.text,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
    if (isMe) {
      return msg;
    }

    return Row(
      children: <Widget>[
        msg,
        IconButton(
          icon: message.isLiked
              ? Icon(Icons.thumb_up)
              : Icon(Icons.thumb_down),
          iconSize: 30,
          color:
              message.isLiked ? Theme.of(context).primaryColor : Colors.black,
          onPressed: () {},
        ),
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 60,
      color: Colors.white30,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.tag_faces),
            iconSize: 30,
            color: Colors.black,
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value){},
              decoration: InputDecoration.collapsed(hintText: 'Send a message'),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 30,
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Center(
            child: Text(
          widget.user.name,
          style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),
        )),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30,
            color: Colors.black,
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: ()=>FocusScope.of(context).unfocus(),
              child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.only(top: 15),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return _buildMessage(message, isMe);
                    },
                  ),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}

import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';

class ChatPage extends StatefulWidget {
  final ChatModel chat;

  ChatPage(this.chat);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(236, 229, 221, 1.0),
        appBar: buildTopBar(context),
        body: buildBody(context));
  }

  Column buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            flex: 18,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: ListView.builder(
                itemCount: widget.chat.chatMessages.length,
                reverse: true,
                itemBuilder: (context, index) {
                  return widget.chat.chatMessages[index].isSelf
                      ? buildSelfChat(index)
                      : buildContactChat(index);
                },
              ),
            )),
        Expanded(
            flex: 2,
            child: buildInputField(context)),
      ],
    );
  }

  AppBar buildTopBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      actions: <Widget>[
        IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
        IconButton(icon: Icon(Icons.call), onPressed: () {}),
        IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
      ],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(60.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  radius: 20,
                  backgroundImage: NetworkImage(widget.chat.profilePictureUrl),
                ),
                SizedBox(width: 2.0)
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: Text(
                widget.chat.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 17.0),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildInputField(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 24.0),
      height: 50.0,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(30.0)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 18,
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0)),
                child: Align(
                  alignment: Alignment.center,
                  child: TextField(
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                        hintText: "Type a message",
                        border: InputBorder.none,
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.attachment,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 15.0),
                              Icon(
                                Icons.camera_alt,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.sentiment_satisfied,
                          size: 30.0,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
                flex: 3,
                child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Center(
                      child: Icon(
                        Icons.send,
                        size: 22.0,
                        color: Colors.white,
                      ),
                    )))
          ],
        ),
      ),
    );
  }

  Widget buildContactChat(int index) {
    return Bubble(
      margin: BubbleEdges.only(
          top: (index < widget.chat.chatMessages.length - 2 &&
                  widget.chat.chatMessages[index + 1].isSelf)
              ? 20.0
              : 5.0,
          right: 100.0),
      nip: (index < widget.chat.chatMessages.length - 1 &&
              widget.chat.chatMessages[index + 1].isSelf)
          ? BubbleNip.leftTop
          : BubbleNip.no,
      nipHeight: 12.0,
      alignment: Alignment.centerLeft,
      elevation: 0.4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.chat.chatMessages[index].message,
          ),
          SizedBox(
            height: 4.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                widget.chat.chatMessages[index].time,
                style: TextStyle(fontSize: 10.0, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSelfChat(int index) {
    return Bubble(
      margin: BubbleEdges.only(
          top: (index < widget.chat.chatMessages.length - 1 &&
                  widget.chat.chatMessages[index + 1].isSelf)
              ? 5.0
              : 20.0,
          left: 100.0,
          bottom: index == 0 ? 10.0 : 0.0),
      nip: (index < widget.chat.chatMessages.length - 2 &&
              widget.chat.chatMessages[index + 1].isSelf)
          ? BubbleNip.no
          : BubbleNip.rightTop,
      color: Color.fromRGBO(225, 255, 199, 1.0),
      nipHeight: 12.0,
      alignment: Alignment.centerRight,
      elevation: 0.4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.chat.chatMessages[index].message,
          ),
          SizedBox(
            height: 4.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                widget.chat.chatMessages[index].time,
                style: TextStyle(fontSize: 10.0, color: Colors.grey),
              ),
              SizedBox(
                width: 4.0,
              ),
              Icon(
                Icons.check,
                color: Colors.blue,
                size: 14.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}

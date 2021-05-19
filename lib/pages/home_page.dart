import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/dummy_data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController homeTabController;
  bool newChatButton = true;

  @override
  void initState() {
    super.initState();
    homeTabController = TabController(vsync: this, initialIndex: 1, length: 4);
    homeTabController.addListener(_tabListener);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  Widget buildBody() => ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) =>
          Column(
            children: <Widget>[
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  foregroundColor: Theme
                      .of(context)
                      .primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(chats[index].profilePictureUrl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      chats[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      chats[index].lastMessage.time,
                      style: TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ],
                ),
                subtitle: Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    chats[index].lastMessage.message,
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ),
              )
            ],
          ),
    );

  Widget buildAppBar() {
    return AppBar(
      title: Text("WhatsApp"),
      elevation: 0.7,
      bottom: TabBar(
        controller: homeTabController,
        indicatorColor: Colors.white,
        tabs: <Widget>[
          Tab(icon: Icon(Icons.camera_alt)),
          Tab(text: "CHATS"),
          Tab(
            text: "STATUS",
          ),
          Tab(
            text: "CALLS",
          ),
        ],
      ),
      actions: <Widget>[
        Icon(Icons.search),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
        ),
        Icon(Icons.more_vert)
      ],
    );
  }

  void _tabListener() {
    if (homeTabController.index == 1) {
      newChatButton = true;
    } else {
      newChatButton = false;
    }
    setState(() {});
  }
}

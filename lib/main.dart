import 'package:flutter/material.dart';

void main() {
  runApp(SkypeHomePage());
}

class SkypeHomePage extends StatefulWidget {
  @override
  _SkypeHomePageState createState() => _SkypeHomePageState();
}

class _SkypeHomePageState extends State<SkypeHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Chats'),
    Text('Calls'),
    Text('Contacts'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Alkesh Raj',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            body: ListView(
              children: <Widget>[
                SkypeChatMemberTile(
                  memberName: 'Alkesh Raj',
                  lastMessage: 'Kese ho?',
                  lastMessageTime: '2h ago',
                  profileImageUrl:
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
                ),
                SkypeChatMemberTile(
                  memberName: 'Anas',
                  lastMessage: 'Assignment send karo',
                  lastMessageTime: '05/3/2023',
                  profileImageUrl:
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
                ),
                SkypeChatMemberTile(
                  memberName: 'Zafeer',
                  lastMessage: 'Hogaya Assignment',
                  lastMessageTime: '02/02/2023',
                  profileImageUrl:
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
                ),
                SkypeChatMemberTile(
                  memberName: 'Alkesh Raj',
                  lastMessage: 'Kese ho?',
                  lastMessageTime: '2h ago',
                  profileImageUrl:
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
                ),
                SkypeChatMemberTile(
                  memberName: 'Anas',
                  lastMessage: 'Assignment send karo',
                  lastMessageTime: '05/3/2023',
                  profileImageUrl:
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
                ),
                SkypeChatMemberTile(
                  memberName: 'Zafeer',
                  lastMessage: 'Hogaya Assignment',
                  lastMessageTime: '02/02/2023',
                  profileImageUrl:
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
                ),
                SkypeChatMemberTile(
                  memberName: 'Alkesh Raj',
                  lastMessage: 'Kese ho?',
                  lastMessageTime: '2h ago',
                  profileImageUrl:
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
                ),
                SkypeChatMemberTile(
                  memberName: 'Anas',
                  lastMessage: 'Assignment send karo',
                  lastMessageTime: '05/3/2023',
                  profileImageUrl:
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
                ),
                SkypeChatMemberTile(
                  memberName: 'Zafeer',
                  lastMessage: 'Hogaya Assignment',
                  lastMessageTime: '02/02/2023',
                  profileImageUrl:
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
                ),
                // Add more tiles for each chat member
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Chats',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.call),
                  label: 'Calls',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.contacts),
                  label: 'Contacts',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}

class SkypeChatMemberTile extends StatelessWidget {
  final String memberName;
  final String lastMessage;
  final String lastMessageTime;
  final String profileImageUrl;

  SkypeChatMemberTile({
    required this.memberName,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(profileImageUrl),
      ),
      title: Text(memberName),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              lastMessage,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          SizedBox(width: 8),
          Text(
            lastMessageTime,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}

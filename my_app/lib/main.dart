import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                child: Text(
                  'Menu App',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                      ModalRoute.withName(''));
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.person_2_outlined),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: const Text('Wellcome to Flutter'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    SizedBox(
                      width: 45,
                      height: 45,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://vtv1.mediacdn.vn/thumb_w/650/2022/9/23/1652155217doan-gioi-thieu-teaser-avatar-2-tieu-de-ngay-phat-1663908206183474513814-crop-16639082132171187084960.png'),
                        radius: 220,
                      ),
                    ),
                    SizedBox(
                      width: 380,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'What are you thinking ?',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0))),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton.icon(
                        onPressed: null,
                        icon: const Icon(
                          Icons.camera_alt,
                          color: Colors.redAccent,
                        ),
                        label: const Text('Live video')),
                    TextButton.icon(
                        onPressed: null,
                        icon: const Icon(
                          Icons.image,
                          color: Colors.greenAccent,
                        ),
                        label: const Text('Photo/Video')),
                    TextButton.icon(
                        onPressed: null,
                        icon: const Icon(
                          Icons.sentiment_satisfied_outlined,
                          color: Colors.amberAccent,
                        ),
                        label: const Text('Felling/activity')),
                  ],
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://vtv1.mediacdn.vn/thumb_w/650/2022/9/23/1652155217doan-gioi-thieu-teaser-avatar-2-tieu-de-ngay-phat-1663908206183474513814-crop-16639082132171187084960.png'))),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.live_tv_outlined), label: 'Live'),
            BottomNavigationBarItem(
                icon: Icon(Icons.light), label: 'Notification'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded), label: 'Account'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          backgroundColor: Colors.blueGrey,
          unselectedItemColor: Colors.black54,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

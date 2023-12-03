import 'package:flutter/material.dart';
import 'package:podcastua/screens/podcasts_page.dart';
import 'package:podcastua/screens/profile_page.dart';
import 'package:podcastua/screens/radio_page.dart';
import 'package:podcastua/screens/search_page.dart';
import 'package:podcastua/screens/my_library_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  late String _title;

  @override
  void initState() {
    super.initState();
    _title = 'Hello User';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 148, 214, 1),
        title: Text(_title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Немає нових повідомлень')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          if (currentPageIndex == index) return;
          setState(() {
            currentPageIndex = index;
            switch (index) {
              case 0:
                {
                  _title = 'Hello User';
                }
                break;
              case 1:
                {
                  _title = 'Radio';
                }
                break;
              case 2:
                {
                  _title = 'Search';
                }
                break;
              case 3:
                {
                  _title = 'My Library';
                }
                break;
              case 4:
                {
                  _title = 'Profile';
                }
                break;
            }
          });
        },
        indicatorColor: Colors.black,
        backgroundColor: const Color.fromRGBO(152, 239, 250, 1),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home, color: Colors.white),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.radio, color: Colors.white),
            icon: Icon(Icons.radio_outlined),
            label: 'Radio',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.search, color: Colors.white),
            icon: Icon(Icons.search_outlined),
            label: 'Search',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.playlist_play, color: Colors.white),
            icon: Icon(Icons.playlist_play_outlined),
            label: 'My library',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person, color: Colors.white),
            icon: Icon(Icons.person_outline_outlined),
            label: 'Settings',
          ),
        ],
      ),
      body: <Widget>[
        const PodcastsPage(),
        const RadioPage(),
        const SearchPage(),
        const MyLibraryPage(),
        const ProfilePage(),
      ][currentPageIndex],
    );
  }
}

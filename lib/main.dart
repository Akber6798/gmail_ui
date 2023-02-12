import 'package:flutter/material.dart';
import 'package:gmail_ui/drawer_list.dart';
import 'package:gmail_ui/main_list.dart';
import 'package:gmail_ui/text_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final _gap = const SizedBox(height: 10);
  final _drawerGap = const SizedBox(height: 5);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF191919),
        appBar: AppBar(
          backgroundColor: const Color(0xFF333333),
          title: const Text(
            'Search in mail',
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          actions: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/akber.jpg'),
            ),
            SizedBox(width: 15)
          ],
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xFF333333),
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF333333),
                ),
                accountName: Text(
                  'Akber A A',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                accountEmail: Text(
                  'qwertye71@gmail.com',
                  style: TextStyle(fontSize: 20),
                ),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/akber.jpg')),
              ),
              const Divider(color: Colors.grey, thickness: 2),
              DrawerList(
                  icon: Icons.check_box, title: 'Primary', childTitile: '99+'),
              _drawerGap,
              DrawerList(
                  icon: Icons.arrow_back_sharp,
                  title: 'Promotions',
                  childTitile: ''),
              _drawerGap,
              DrawerList(
                  icon: Icons.group, title: 'Social', childTitile: '99+new'),
              _drawerGap,
              TextDrawer(lable: 'Recent labels'),
              _drawerGap,
              DrawerList(
                  icon: Icons.play_arrow,
                  title: '[Imap]/Trash',
                  childTitile: ''),
              _drawerGap,
              DrawerList(
                  icon: Icons.play_arrow, title: 'Personal', childTitile: ''),
              _drawerGap,
              DrawerList(
                  icon: Icons.play_arrow, title: 'Receipts', childTitile: ''),
              _drawerGap,
              DrawerList(
                  icon: Icons.play_arrow, title: 'Work', childTitile: ''),
              _drawerGap,
              TextDrawer(lable: 'All labels'),
              _drawerGap,
              DrawerList(icon: Icons.star, title: 'Starred', childTitile: ''),
              _drawerGap,
              DrawerList(
                  icon: Icons.schedule, title: 'Snoozed', childTitile: ''),
              _drawerGap,
              DrawerList(
                  icon: Icons.label_important,
                  title: 'Important',
                  childTitile: '99+'),
              _drawerGap,
              DrawerList(
                  icon: Icons.keyboard_double_arrow_left,
                  title: 'Sent',
                  childTitile: '10'),
              _drawerGap,
              DrawerList(
                  icon: Icons.schedule_send,
                  title: 'Scheduled',
                  childTitile: ''),
              _drawerGap,
              DrawerList(icon: Icons.output, title: 'Outbox', childTitile: ''),
              _drawerGap,
              DrawerList(
                  icon: Icons.view_kanban, title: 'Draft', childTitile: ''),
              _drawerGap,
              DrawerList(
                  icon: Icons.all_inbox, title: 'All mail', childTitile: '99+'),
              _drawerGap,
              DrawerList(icon: Icons.report, title: 'Spam', childTitile: '15'),
              _drawerGap,
              DrawerList(icon: Icons.delete, title: 'Trash', childTitile: '8'),
              _drawerGap,
              DrawerList(
                  icon: Icons.play_arrow,
                  title: '[Imap]/Trash',
                  childTitile: ''),
              _drawerGap,
              DrawerList(
                  icon: Icons.play_arrow, title: 'Personal', childTitile: ''),
              _drawerGap,
              DrawerList(
                  icon: Icons.play_arrow, title: 'Receipts', childTitile: ''),
              _drawerGap,
              DrawerList(
                  icon: Icons.play_arrow,
                  title: 'Unsubscribed Emails',
                  childTitile: ''),
              _drawerGap,
              DrawerList(
                  icon: Icons.play_arrow, title: 'Word', childTitile: ''),
              _drawerGap,
              TextDrawer(lable: 'Google apps'),
              _drawerGap,
              DrawerList(
                  icon: Icons.calendar_month,
                  title: 'Calender',
                  childTitile: ''),
              _drawerGap,
              DrawerList(
                  icon: Icons.contacts, title: 'Contacts', childTitile: ''),
              const Divider(color: Colors.grey, thickness: 2),
              DrawerList(
                  icon: Icons.settings, title: 'Settings', childTitile: ''),
              _drawerGap,
              DrawerList(
                  icon: Icons.contact_support,
                  title: 'Help & feedback',
                  childTitile: ''),
            ],
          ),
        ),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 15),
              child: Text(
                'Primary',
                style: TextStyle(color: Colors.white),
              ),
            ),
            _gap,
            MainList(
              mainText: 'CANARA BANK',
              childText: 'Hai Akber A A please our bank.....',
              imageLink: const AssetImage('assets/canara.png'),
            ),
            _gap,
            MainList(
              mainText: 'Myntra',
              childText: 'Only a True Cricket Fan Can Open...',
              imageLink: const AssetImage('assets/myntra.png'),
            ),
            _gap,
            MainList(
              mainText: 'Estatement',
              childText: 'ICICI Bank Statement from 01-01-2022..',
              imageLink: const AssetImage('assets/icici.png'),
            ),
            _gap,
            MainList(
              mainText: 'Amazon',
              childText:
                  'Hey Akber A A, There is a 12% , please visit the website',
              imageLink: const AssetImage('assets/amazon.png'),
            ),
            _gap,
            MainList(
              mainText: 'Angel from Educative',
              childText: 'Welcome to Educative',
              imageLink: const AssetImage('assets/one.jpg'),
            ),
            _gap,
            MainList(
              mainText: 'Emoji',
              childText: 'Helloo Akber A A, Are you oke?',
              imageLink: const AssetImage('assets/two.jpg'),
            ),
            _gap,
            MainList(
              mainText: 'LinkedIn',
              childText: 'Hey Akber A A, You have one Job Vacancy',
              imageLink: const AssetImage('assets/three.jpg'),
            ),
            _gap,
            MainList(
              mainText: 'Myntra',
              childText: 'Hey Akber, Your kart is waiting....',
              imageLink: const AssetImage('assets/myntra.png'),
            ),
            _gap,
            MainList(
              mainText: 'Nihas Muhammed',
              childText: 'Please take the call.......',
              imageLink: const AssetImage('assets/four.jpg'),
            ),
            _gap,
            MainList(
              mainText: 'CANARA BANK',
              childText: 'Your Account Balance is *******',
              imageLink: const AssetImage('assets/canara.png'),
            ),
            _gap,
            MainList(
              mainText: 'ICICI BANK',
              childText: 'Hello you have elogible for taking credit card....',
              imageLink: const AssetImage('assets/icici.png'),
            ),
            _gap,
            MainList(
              mainText: 'qwertye71@gmail.com',
              childText: 'Helloooo qertyeeee',
              imageLink: const AssetImage('assets/akber.jpg'),
            ),
            _gap,
            MainList(
              mainText: 'Estatement',
              childText: 'ICICI Bank Statement from 01-01-2022..',
              imageLink: const AssetImage('assets/icici.png'),
            ),
            _gap,
            MainList(
              mainText: 'Rabbit',
              childText: 'Welcome to Educative',
              imageLink: const AssetImage('assets/three.jpg'),
            ),
            _gap,
            MainList(
              mainText: 'Hellooo',
              childText: 'Diwali offerrr',
              imageLink: const AssetImage('assets/amazon.png'),
            ),
            _gap,
            MainList(
              mainText: 'Angel from Educative',
              childText: 'Are you ready to choose C++',
              imageLink: const AssetImage('assets/three.jpg'),
            ),
            _gap,
            MainList(
              mainText: 'Educative',
              childText:
                  'Hello you are selected for free course, please click the below link',
              imageLink: const AssetImage('assets/two.jpg'),
            ),
            _gap,
            MainList(
              mainText: 'Angel',
              childText: 'Diwali 👌 offer are available',
              imageLink: const AssetImage('assets/one.jpg'),
            ),
            _gap,
            MainList(
              mainText: 'Christeena',
              childText: 'Please fill the form',
              imageLink: const AssetImage('assets/three.jpg'),
            ),
            _gap,
            MainList(
              mainText: 'Angel from Educative',
              childText: 'Here are courses c++,Dart, Flutter',
              imageLink: const AssetImage('assets/one.jpg'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.edit),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Colors.lightBlue[900],
        ),
      ),
    );
  }
}

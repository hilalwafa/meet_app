import 'package:flutter/material.dart';
import 'package:meet_app/screens/history_meeting_screen.dart';
import 'package:meet_app/utils/colors.dart';

import '../main.dart';
import '../widgets/home_meeting_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChange(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    const HistoryMeetingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:  Text('Meet & Chat',style: TextStyle(fontWeight: FontWeight.w500,fontSize: h*0.03),),
        backgroundColor: backgroundColor,
        centerTitle: true,
      ),
      body: pages[_page],


      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 14,
          onTap: onPageChange,
          currentIndex: _page,
          type: BottomNavigationBarType.fixed,
          items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.comment_bank), label: 'Meet & Char'),
        BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock), label: 'Meeting'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'Contacts'),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: 'Settings'),

      ]),
    );
  }
}

class HistoryMeeting extends StatelessWidget {
  const HistoryMeeting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButton(
              onPressed: () {},
              icon: Icons.videocam,
              text: 'New Meeting',
            ),
            HomeMeetingButton(
              onPressed: () {},
              icon: Icons.add_box_rounded,
              text: 'Join Meeting',
            ),
            HomeMeetingButton(
              onPressed: () {},
              icon: Icons.calendar_today,
              text: 'Schedule',
            ),
            HomeMeetingButton(
              onPressed: () {},
              icon: Icons.arrow_upward_rounded,
              text: 'Share Screen',
            ),
          ],
        ),
        Expanded(child: Center(
          child: Text('Create/Join Meetings with just a click',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: w*0.045
          ),),
        ))
      ],
    );
  }
}

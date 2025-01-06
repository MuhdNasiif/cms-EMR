import 'package:cms_emrgroup/features/doctors_page/doctors_page.dart';
import 'package:cms_emrgroup/features/home_page/home_page.dart';
import 'package:cms_emrgroup/features/settings_page/emr/Investigation/investigation.dart';
import 'package:cms_emrgroup/features/settings_page/emr/diagnosis_page/diagnosis_page.dart';
import 'package:cms_emrgroup/features/settings_page/settings_page.dart';
import 'package:cms_emrgroup/utils/app_color.dart';
import 'package:flutter/material.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({
    super.key,
  });

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  int currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    DoctorsPage(),
    InvestigationPage(),
    SettingsPage()
  ];
  @override
  Widget build(BuildContext context) {
    _pages[0] = HomePage();
    return Scaffold(
        body: _pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: primarycolor,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people_outline),
                label: 'Patients',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: 'Doctors',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ]));
  }
}

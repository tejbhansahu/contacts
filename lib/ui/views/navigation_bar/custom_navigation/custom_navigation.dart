import 'package:contacts/ui/views/navigation_bar/contacts/contacts.dart';
import 'package:contacts/ui/views/navigation_bar/highlights/highlights.dart';
import 'package:contacts/ui/views/navigation_bar/manage/manage.dart';
import 'package:flutter/material.dart';

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({super.key});

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  int selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const [
        Contacts(),
        Highlights(),
        Manage(),
      ][selectedPageIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            selectedPageIndex = index;
          });
        },
        destinations: const <NavigationDestination>[
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
            label: 'Contacts',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.local_attraction),
            icon: Icon(Icons.local_attraction_outlined),
            label: 'Stared',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.build),
            icon: Icon(Icons.build_outlined),
            label: 'Fix & manage',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:user_preferences_app/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.pages),
            title: Text('Home'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
          ListTile(title: const Text('People'), onTap: () {}),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              // Navigator.pop(context);
              // Avoid having back button on screen when closes drawer
              Navigator.pushReplacementNamed(context, SettingsScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            image: AssetImage('assets/menu-img.jpg'),
            fit: BoxFit.cover,
          )),
      child: Text('Drawer Header'),
    );
  }
}

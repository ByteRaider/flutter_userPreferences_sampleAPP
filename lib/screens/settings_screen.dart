import 'package:flutter/material.dart';
import 'package:user_preferences_app/widgets/side_menu.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings';
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      drawer: const SideMenu(),
      body: const Center(
        child: Text('Settings Screen'),
      ),
    );
  }
}

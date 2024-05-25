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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Settings',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
                ),
                const Divider(),
                SwitchListTile.adaptive(
                    value: true,
                    title: const Text('Dark Mode'),
                    onChanged: (value) {}),
                const Divider(),
                RadioListTile<int>(
                    title: const Text('Masculine'),
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {}),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    initialValue: 'Enter Name Here',
                    decoration: const InputDecoration(
                        labelText: 'Name',
                        helper: Text('Name cannot be empty')),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

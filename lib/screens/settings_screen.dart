import 'package:flutter/material.dart';
import 'package:user_preferences_app/widgets/side_menu.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings';
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;
  int gender = 1;
  String name = 'FullNameHere';
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
                    value: isDarkMode,
                    title: const Text('Dark Mode'),
                    onChanged: (value) {
                      isDarkMode = value;
                      setState(() {});
                    }),
                const Divider(),
                RadioListTile<int>(
                    title: const Text('Male'),
                    value: 1,
                    groupValue: gender,
                    onChanged: (value) {
                      gender = value ?? 0;
                      setState(() {});
                    }),
                RadioListTile<int>(
                    title: const Text('Female'),
                    value: 2,
                    groupValue: gender,
                    onChanged: (value) {
                      gender = value ?? 0;
                      setState(() {});
                    }),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    initialValue: 'Enter Name Here',
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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

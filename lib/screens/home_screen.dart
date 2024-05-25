import 'package:flutter/material.dart';
import 'package:user_preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        drawer: const SideMenu(),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('isDark Mode'),
            Divider(),
            Text('Genres'),
            Divider(),
            Text('Username')
          ],
        ));
  }
}

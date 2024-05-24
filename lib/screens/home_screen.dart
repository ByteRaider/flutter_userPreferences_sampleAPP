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
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}

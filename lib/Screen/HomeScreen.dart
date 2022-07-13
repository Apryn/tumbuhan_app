import 'package:flutter/material.dart';
import 'package:tumbuhan_app/Screen/Components/Body.dart';
import 'package:tumbuhan_app/Theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(), 
      body: const Body());
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 100,
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
    );
  }
}

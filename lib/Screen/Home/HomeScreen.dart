import 'package:flutter/material.dart';
import 'package:tumbuhan_app/Screen/Home/Components/MyBottomNavbar.dart';
import 'Components/Body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavbar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 100,
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
    );
  }
}

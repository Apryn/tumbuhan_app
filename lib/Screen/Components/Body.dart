import 'package:flutter/material.dart';
import 'package:tumbuhan_app/Theme.dart';
import 'Header_With_SearchBox.dart';
import 'RecomendedPlants.dart';
import 'TitleWithBtn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TittleWithBtn(
            title: "Recomended",
            press: () {},
          ),
          const RecomendedPlants()
        ],
      ),
    );
  }
}

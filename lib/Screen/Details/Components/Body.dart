import 'package:flutter/material.dart';
import 'BuybtnandDescription.dart';
import 'ImageandIcon.dart';
import 'TitleandPrice.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ImageandIcon(),
            const TitleandPrice(
              title: "Angelica",
              country: "Rusia",
              price: 400,
            ),
            BuybtnandDescription(size: size)
          ],
        ),
      ),
    );
  }
}

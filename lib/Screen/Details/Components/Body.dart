import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Column(
              children: [],
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.green.withOpacity(0.5))
                  ],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  image: const DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage("assets/images/Tanaman1.jpeg"),
                      fit: BoxFit.cover)),
            )
          ],
        )
      ],
    );
  }
}

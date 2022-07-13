import 'package:flutter/material.dart';
import 'package:tumbuhan_app/Theme.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.3,
      margin: const EdgeInsetsDirectional.only(bottom: 20),
      child: Stack(children: [
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 46 - 20),
          height: size.height * 0.3 - 37,
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Row(
            children: [
              const Text(
                "Hi, Apriyan",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/images/Logo.png",
                  scale: 15,
                ),
              )
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: padding,
              padding: const EdgeInsets.only(left: 20),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.green)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: const TextStyle(
                      color: Colors.green,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    )),
              ),
            ))
      ]),
    );
  }
}

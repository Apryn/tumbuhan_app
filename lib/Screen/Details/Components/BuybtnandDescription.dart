import 'package:flutter/material.dart';

class BuybtnandDescription extends StatelessWidget {
  const BuybtnandDescription({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 64,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius:  BorderRadius.only(
                          topRight: Radius.circular(20))),
                  primary: Colors.green),
              onPressed: () {},
              child: const Text("Buy")),
        ),
        Expanded(
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Description",
                  style: TextStyle(color: Colors.black),
                )))
      ],
    );
  }
}
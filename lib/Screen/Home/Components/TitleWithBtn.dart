import 'package:flutter/material.dart';

class TittleWithBtn extends StatelessWidget {
  const TittleWithBtn({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 15),
              ),
              const Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: press,
                  child: const Text("More"))
            ],
          ),
        ],
      ),
    );
  }
}
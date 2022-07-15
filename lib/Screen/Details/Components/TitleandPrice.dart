import 'package:flutter/material.dart';
import 'package:tumbuhan_app/Theme.dart';

class TitleandPrice extends StatelessWidget {
  const TitleandPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "$title\n", style: Theme.of(context).textTheme.headline5),
            TextSpan(
                text: country,
                style: const TextStyle(fontSize: 20, color: Colors.green))
          ])),
          const Spacer(),
          Text(
            "\$$price",
            style: const TextStyle(fontSize: 25, color: Colors.green),
          )
        ],
      ),
    );
  }
}
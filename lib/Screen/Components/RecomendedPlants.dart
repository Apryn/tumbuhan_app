import 'package:flutter/material.dart';

class RecomendedPlants extends StatelessWidget {
  const RecomendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendePlantCard(
            image: "assets/images/Tanaman1.jpeg",
            title: "Samantha",
            country: "Rusia",
            price: 440,
            press: () {},
          ),
          RecomendePlantCard(
            image: "assets/images/Tanaman1.jpeg",
            title: "Samantha",
            country: "Rusia",
            price: 440,
            press: () {},
          ),
          RecomendePlantCard(
            image: "assets/images/Tanaman1.jpeg",
            title: "Samantha",
            country: "Rusia",
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendePlantCard extends StatelessWidget {
  const RecomendePlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
      width: size.width * 0.4,
      child: Column(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(image)),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(20 / 2),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color.fromARGB(255, 212, 212, 212))
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n",
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: country,
                        style: TextStyle(color: Colors.green.withOpacity(0.5)))
                  ])),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: Colors.green, fontSize: 10),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
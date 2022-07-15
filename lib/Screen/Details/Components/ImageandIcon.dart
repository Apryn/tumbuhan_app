import 'package:flutter/material.dart';
import 'IconBtn.dart';

class ImageandIcon extends StatelessWidget {
  const ImageandIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.8,
      child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              const Spacer(),
              const IconBtn(
                icon: Icon(
                  Icons.water,
                  color: Colors.green,
                ),
              ),
              const IconBtn(
                icon: Icon(
                  Icons.place,
                  color: Colors.green,
                ),
              ),
              const IconBtn(
                icon: Icon(
                  Icons.wind_power,
                  color: Colors.green,
                ),
              ),
              const IconBtn(
                icon: Icon(
                  Icons.sunny,
                  color: Colors.green,
                ),
              )
            ],
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
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../../../Theme.dart';

class IconBtn extends StatelessWidget {
  const IconBtn({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.05),
        padding: padding / 2,
        height: 52,
        width: 52,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 10), blurRadius: 22, color: Colors.grey),
              BoxShadow(
                  offset: Offset(-15, -15), blurRadius: 22, color: Colors.white)
            ]),
        child: icon);
  }
}

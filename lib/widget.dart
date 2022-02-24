import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Small_button extends StatelessWidget {
  final IconData icon;

  Widget getIcon(IconData icon) {
    return Icon(
      icon,
      color: const Color(0xff7F8489),
    );
  }

  const Small_button({
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 63,
      height: 63,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(31.5),
        gradient: const LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            Color(0xff2C3036),
            Color(0xff2F353A),
            Color(0xaa7F8489),
          ],
        ),
      ),
      child: Center(
        child: getIcon(icon),
      ),
    );
  }
}

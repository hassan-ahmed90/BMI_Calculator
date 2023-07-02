import 'package:flutter/material.dart';


class IconContent extends StatelessWidget {
  final String title;
  final IconData icon;
  const IconContent({Key? key,required this.title,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 80,),
        Text(title,
          style: TextStyle(
              fontSize: 18,
              color: Color(0xFF8D8E98)),),
      ],
    );
  }
}

import 'package:bmi_calculator/component/constant.dart';
import 'package:bmi_calculator/screens/input_page.dart';
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
        Icon(icon,size: kbottomContainerHeight,),
        Text(title,
          style: klabetTextStyle),
      ],
    );
  }
}

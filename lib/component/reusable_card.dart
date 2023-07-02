import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final VoidCallback onpress;
  const ReusableCard({Key? key,required this.colour,required this.cardChild,required this.onpress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

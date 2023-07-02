

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        children: [
        Expanded(child:   Row(
          children: [
            Expanded(
                child: ReusableCard(
                  colour: Color(0xFF1D1E33),
            cardChild:IconContent(title: "Male",icon: FontAwesomeIcons.mars,)
            )),
            Expanded(child: ReusableCard(colour: Color(0xFF1D1E33),cardChild:IconContent(title: "Female",icon: FontAwesomeIcons.venus,),)),
          ],
        ),),
          Container(

            height: 170,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF1D1E33),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(colour: Color(0xFF1D1E33),cardChild: IconContent(title: "Age",icon: FontAwesomeIcons.plus,),)),
                Expanded(child: ReusableCard(colour: Color(0xFF1D1E33),cardChild: IconContent(title: "Weight",icon: FontAwesomeIcons.minus,),)),

              ],
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
          )
        ],
      ),


    );
  }
}

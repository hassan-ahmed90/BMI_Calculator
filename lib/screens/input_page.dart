

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/component/constant.dart';
import '../component/icon_content.dart';
import '../component/reusable_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}
enum Gender{
  female, male,shani
}
int height =180;
class _InputPageState extends State<InputPage> {
  // Color maleCardColor= inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  // void updateColor(Gender gender){
  //   if(gender==Gender.male){
  //     if(maleCardColor==inactiveCardColor){
  //       maleCardColor=activeCardcolor;
  //       femaleCardColor=inactiveCardColor;
  //     }else{
  //       maleCardColor= inactiveCardColor;
  //     }
  //   }
  //   if(gender==Gender.female){
  //     if(femaleCardColor==inactiveCardColor){
  //       femaleCardColor=activeCardcolor;
  //       maleCardColor=inactiveCardColor;
  //     }else{
  //       femaleCardColor= inactiveCardColor;
  //     }
  //   }
  // }
  Gender selectedGender=Gender.shani;
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text("BMI CALCULATOR"),
        //centerTitle: true,

      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Expanded(child:Row(
          children: [
            Expanded(
                child: ReusableCard(
                  onpress: (){
                    setState(() {
                      selectedGender=Gender.male;
                    });
                  },
                    colour: selectedGender==Gender.male?kactiveCardcolor:kinactiveCardColor,
            cardChild:IconContent(title: "Male",icon: FontAwesomeIcons.mars,)
            )),
            Expanded(
                child: ReusableCard(
                  onpress: (){
                    setState(() {
                      selectedGender=Gender.female;
                    });

                  },
                  colour: selectedGender==Gender.female?kactiveCardcolor:kinactiveCardColor,
                  cardChild:IconContent(title: "Female",icon: FontAwesomeIcons.venus,),)),
          ],
        ),),
          Expanded(
            child: ReusableCard(colour: kinactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Height",style: klabetTextStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(),style: knumberTextStyle),
                     Text("cm",style: klabetTextStyle,)],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor :Color(0xFF8D8E98) ,
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xFFEB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    overlayColor: Color(0x29EB1555),

                  ),
                  child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      //activeColor: Color(0xFFEB1555),
                      // inactiveColor:,
                      onChanged: (newValue){
                    setState(() {
                      height=newValue.round();
                    });
                      }),
                )
              ],
            ), onpress: (){
                }),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                      onpress: (){
                      },
                  colour: kactiveCardcolor,
                      cardChild: IconContent(title: "Age",icon: FontAwesomeIcons.plus,),)),
                Expanded(
                    child: ReusableCard(
                      onpress: (){

                      },
                      colour: kactiveCardcolor,
                      cardChild: IconContent(title: "Weight",icon: FontAwesomeIcons.minus,),)),
              ],
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kbottomContainerColor,
            ),
          )
        ],
      ),
    );
  }
}

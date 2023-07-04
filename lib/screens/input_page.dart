import 'package:bmi_calculator/Functionality/calculated_brain.dart';
import 'package:bmi_calculator/screens/result_scree.dart';
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

enum Gender { female, male, shani }

int height = 180;
int weight =60;
int age=18;

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
  Gender selectedGender = Gender.shani;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
        //centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        onpress: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        colour: selectedGender == Gender.male
                            ? kactiveCardcolor
                            : kinactiveCardColor,
                        cardChild: const IconContent(
                          title: "Male",
                          icon: FontAwesomeIcons.mars,
                        ))),
                Expanded(
                    child: ReusableCard(
                  onpress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kactiveCardcolor
                      : kinactiveCardColor,
                  cardChild: const IconContent(
                    title: "Female",
                    icon: FontAwesomeIcons.venus,
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                colour: kinactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Height",
                      style: klabetTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: knumberTextStyle),
                        const Text(
                          "cm",
                          style: klabetTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: const Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: const Color(0xFFEB1555),
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30),
                        overlayColor: const Color(0x29EB1555),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          //activeColor: Color(0xFFEB1555),
                          // inactiveColor:,
                          onChanged: (newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    )
                  ],
                ),
                onpress: () {}),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  onpress: () {},
                  colour: kactiveCardcolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Weight",style: klabetTextStyle,),
                      Text(weight.toString(),style: knumberTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                weight++;
                              });

                            },
                            backgroundColor: const Color(0xFF4C4F5E),
                            child: const Icon(Icons.add,color: Colors.white,),
                          ),
                          const SizedBox(width: 8,),
                          FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                weight--;
                              });

                            },
                            backgroundColor: const Color(0xFF4C4F5E),
                            child: const Icon(FontAwesomeIcons.minus,color: Colors.white,),
                          )
                        ],
                      )
                    ],
                  )
                )),
                Expanded(
                    child: ReusableCard(
                  onpress: () {},
                  colour: kactiveCardcolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Age",style: klabetTextStyle,),
                      Text(age.toString(),style: knumberTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                setState(() {
                                  setState(() {
                                    age++;
                                  });
                                });

                              });

                            },
                            backgroundColor: const Color(0xFF4C4F5E),
                            child: const Icon(Icons.add,color: Colors.white,),
                          ),
                          const SizedBox(width: 8,),
                          FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                setState(() {
                                  age--;
                                });

                              });

                            },
                            backgroundColor: const Color(0xFF4C4F5E),
                            child: const Icon(FontAwesomeIcons.minus,color: Colors.white,),
                          )
                        ],
                      )
                    ],
                  )
                )),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Brain brain = Brain(height: height, weight: weight);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>
                      ResultPage(bmiResult: brain.calculateBMIt(),reslultText: brain.getResult(),interpretaion: brain.getInterpretation(),)));
            },
            child: Container(

              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: kbottomContainerColor,
              ),
                child: const Center(
                  child: Text("CALCULATE ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),

            ),
          )
        ],
      ),
    );
  }
}

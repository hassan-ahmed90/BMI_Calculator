import 'package:bmi_calculator/component/constant.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/component/reusable_card.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String reslultText;
  final String interpretaion;
  const ResultPage(
      {Key? key,
      required this.bmiResult,
      required this.interpretaion,
      required this.reslultText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kactiveCardcolor,
          title: const Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Your Result",
              style: knumberTextStyle,
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                  colour: kinactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                          child: Text(
                        reslultText.toUpperCase(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 20),
                      )),
                      Center(
                        child: Text(
                          bmiResult,
                          style: knumberTextStyle,
                        ),
                      ),
                      Center(
                        child: Text(
                          interpretaion,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                  onpress: () {}),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const InputPage()));
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: kbottomContainerColor,
                ),
                child: const Center(
                  child: Text(
                    "RE-CALCULATE ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

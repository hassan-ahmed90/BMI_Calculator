import 'package:flutter/material.dart';
import 'dart:math';
class Brain{
 final  int  height;
  final int  weight;
  double _bmi=0.0;

  Brain({required this.height,required this.weight});

  String calculateBMIt(){
   _bmi = weight/pow(height/100, 2);
   return _bmi.toStringAsFixed(1);
  }
  String getResult(){
   if(_bmi>=25){
    return "overweight";
   }else if(_bmi>18.5){
    return "Normal";
   }else{
    return "Underweight";
   }
  }

  String getInterpretation(){
   if(_bmi>=25){
    return "You have higher than normal body weight Try to exercise more";
   }else if(_bmi>18.5){
    return "Just Wow you have a normal body weight";
   }else{
    return "You have lower body weight you have to eat more";
   }

  }
}
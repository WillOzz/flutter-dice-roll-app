//import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.firstColor, this.secondColor, {super.key});

   const GradientContainer.purple({super.key})
      : firstColor =  const Color.fromARGB(255, 29, 2, 51),
        secondColor =  const Color.fromARGB(255, 57, 5, 100);

  final Color firstColor;
  final Color secondColor;
 

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            firstColor,
            secondColor,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child:DiceRoller()
      ),
    );
  }
}

import 'package:codeland/utils/const.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key,});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 310,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(45),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600,
                offset: const Offset(1, 1),
                blurRadius: 2,
                spreadRadius: 1),
            const BoxShadow(
                color: Color.fromARGB(255, 200, 200, 200),
                offset: Offset(-2, -2),
                blurRadius: 2,
                spreadRadius: 1)
          ]),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        kheight20,
          Image.asset("assets/images/shadow.png",height: 180  ,width: 150,),
          Image.asset("assets/images/codeland-removebg-preview.png",height:90 ,)
        ],
      ),
    );
  }
}
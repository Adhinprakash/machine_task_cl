import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({super.key,  this.ontap, required this.buttoncolor, required this.textcolor, required this.title, this.loading=false, required this.width, required this.height});
final Future<void> Function()? ontap;
final Color?  buttoncolor;
final Color? textcolor;  
final String title;
final bool loading;
final double width;
final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:ontap ,
      child: Container(
        
       height: height,
       width:width ,
        decoration: BoxDecoration(

            color: buttoncolor, borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.transparent),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3)
              )
            ]
            ),
        child:  Center(
          child: 
          loading ?  const CircularProgressIndicator(strokeWidth: 4,color: Colors.white,)
         : Text(
            title,
            style: TextStyle(
                color: textcolor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
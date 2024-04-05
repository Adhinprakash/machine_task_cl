import 'package:codeland/utils/colors.dart';
import 'package:codeland/utils/const.dart';
import 'package:flutter/material.dart';

class LogoAndNameWidget extends StatefulWidget {
  const LogoAndNameWidget({super.key});

  @override
  State<LogoAndNameWidget> createState() => _LogoAndNameWidgetState();
}

class _LogoAndNameWidgetState extends State<LogoAndNameWidget> {
  @override
  Widget build(BuildContext context) {
    return 
              SizedBox(
                height: 300,
                width: 300,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/codeland-removebg-preview.png",
                      height: 100,
                    ),
                    Image.asset(
                      "assets/images/shadow.png",
                      height: 150,
                      width: 170,
                    ),
                    Text(
                      "Biomedical kiosk",
                      style: textStyleFuc(
                          weight: FontWeight.w500, color: Colors.black, size: 19),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 130),
                      child: Text(
                        "for HCE's",
                        style: textStyleFuc(
                            weight: FontWeight.w500,
                            color: Appcolors.primarycolor,
                            size: 13),
                      ),
                    ),
                  ],
                ),
              );
  }
}
import 'package:codeland/utils/colors.dart';
import 'package:codeland/utils/const.dart';
import 'package:flutter/material.dart';

class ContactDetailsWidget extends StatelessWidget {
  const ContactDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return 
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: SizedBox(
                  height: 70,
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "For Assistance and Login Details contact:",
                        style: textStyleFuc(
                          weight: FontWeight.w400,
                          color: Colors.black,
                          size: 14,
                        ),
                      ),
                      Row(
                        children: [
                          Text("English,kannada & Telungu : ",
                              style: textStyleFuc(
                                weight: FontWeight.w400,
                                color: Colors.black,
                                size: 14,
                              )),
                          Text(
                            "740633800",
                            style: textStyleFuc(
                              weight: FontWeight.w400,
                              color: Appcolors.primarycolor,
                              size: 14,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text("English,kannada & Hindi : ",
                              style: textStyleFuc(
                                weight: FontWeight.w400,
                                color: Colors.black,
                                size: 14,
                              )),
                          Text(
                            "9071386515",
                            style: textStyleFuc(
                              weight: FontWeight.w400,
                              color: Appcolors.primarycolor,
                              size: 14,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
  }
}
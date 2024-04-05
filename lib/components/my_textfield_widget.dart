
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mytextfield extends StatelessWidget {

  final String hintText;
  final TextEditingController controller;
  final FocusNode? focusNode;
  const Mytextfield({super.key, required this.hintText, required this.controller, this.focusNode});

  @override
  Widget build(BuildContext context) {
      final _textInputFormatter = FilteringTextInputFormatter.deny(RegExp(r'\s'));

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(   
                         controller: controller, 
                          inputFormatters: [_textInputFormatter],
                          cursorColor: Colors.black,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              labelStyle: const TextStyle(color: Colors.black),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: const BorderSide(color: Colors.black),
                              
                              ),
                              hintText:hintText,
                              
                              filled: true,
                              fillColor: Colors.white),
                        ),
    ) ;
  }
}
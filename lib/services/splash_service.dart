import 'dart:async';

import 'package:codeland/pages/login_page.dart';
import 'package:flutter/material.dart';

class SplashServices{
  void splashservice(BuildContext context){




Timer(const Duration(seconds: 5), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen())));




  }
}
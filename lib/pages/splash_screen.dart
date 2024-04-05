import 'package:codeland/components/card_widget.dart';
import 'package:codeland/services/splash_service.dart';
import 'package:codeland/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
SplashServices splashServices=SplashServices();

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
splashServices.splashservice(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Appcolors.primarycolor ,
      body:  const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
Center(child: CardWidget())
        ],
      ),
    );
  }
}
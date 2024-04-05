import 'package:codeland/components/contacts_widget.dart';
import 'package:codeland/components/logo_and_name_widget.dart';
import 'package:codeland/components/my_button_widget.dart';
import 'package:codeland/components/my_textfield_widget.dart';
import 'package:codeland/pages/image_upload_screen.dart';
import 'package:codeland/utils/colors.dart';
import 'package:codeland/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernamecontroller = TextEditingController();
    TextEditingController passwordcontroler = TextEditingController();
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // logo and name
              const LogoAndNameWidget(),
                  kheight10,
              
                  // textfields
              
                  Mytextfield(
                    controller: usernamecontroller,
                    hintText: "username",
                  ),
                  kheight10,
                  kheight10,
                  Mytextfield(hintText: "password",
                   controller: passwordcontroler),
              
                  kheight20,
              
                  // button
              
                  Mybutton(
                    height: 50,
                    width: 325,
                    buttoncolor: Appcolors.primarycolor,
                    textcolor: Colors.white,
                    title: "Login",
                    ontap: () async{
                      bool isauthenticated = true;
              
                      if (isauthenticated) {
                       await           Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ImageUploadPage(),
                          ),
                        );
                      }
                    },
                  ),
              
                  kheight20,
              kheight20,
                  // assistance&login details
                      const  ContactDetailsWidget(),
              
                  kheight20,
                  kheight20,
                    const SizedBox(
                    height: 20,
                    width: 300,
                    child:
                        Center(child: Text("v1.7 © 2023 Codeland Infosolutions Pvt Ltd.")),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

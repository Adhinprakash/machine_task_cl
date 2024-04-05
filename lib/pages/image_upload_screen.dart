

import 'dart:io';

import 'package:codeland/components/dotedborder_widget.dart';
import 'package:codeland/components/my_button_widget.dart';
import 'package:codeland/services/provider/image_provider.dart';
import 'package:codeland/utils/colors.dart';
import 'package:codeland/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImageUploadPage extends StatelessWidget {
  const ImageUploadPage({super.key});

  @override
  Widget build(BuildContext context) {
      var imageprovider=Provider.of<ImageUploadProvider>(context);



    return   Scaffold(
      body:SafeArea(child: Center(
        child: Padding( 
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text("Upload a image",style: textStyleFuc(weight: FontWeight.w400, color: Colors.black, size: 19),),
              kheight20,
           DottedBorderWidget(
            imageUploadProvider: imageprovider,
             
          ),
          kheight10,  
          kheight20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              Mybutton(buttoncolor: Appcolors.primarycolor, textcolor: Colors.white, title: "Upload",width: 130,height: 40,ontap:()=>Provider.of<ImageUploadProvider>(context,listen: false ).getImage(),),
              Mybutton(buttoncolor: Colors.grey, textcolor: Colors.black, title: "View",width: 130,height: 40,ontap: ()async {
                return _showFullScreenImage(context, imageprovider.imageFile);
              },),

            ],
          )
            ],
          ),
        ),
      ))
    );
  }


// show the image in full view
   void _showFullScreenImage(BuildContext context, File? imageFile) {
    if (imageFile != null) {
     
      showDialog(
          context: context,
        builder: (BuildContext context) {
          return Dialog(
            child:  SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Image.file(imageFile, fit: BoxFit.cover),
                ),
          );
        }
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please upload an image first.')),
      );
    }
  }
}

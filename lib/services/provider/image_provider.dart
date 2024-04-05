import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class ImageUploadProvider extends ChangeNotifier{
  File? _imagefile;
  File? get imageFile=>_imagefile;


  final picker=ImagePicker();

  Future<void>getImage()async{
    final pickedimage=await picker.pickImage(source: ImageSource.gallery);
    if(pickedimage!=null){
      _imagefile=File(pickedimage.path);
      notifyListeners();
    
    }else{
      throw Exception("no image selected");
    }
  }
}
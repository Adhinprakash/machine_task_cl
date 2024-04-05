import 'package:codeland/services/provider/image_provider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:photo_view/photo_view.dart';
import 'package:provider/provider.dart';

class DottedBorderWidget extends StatelessWidget {
  const DottedBorderWidget({super.key, required, this.imageUploadProvider });
final ImageUploadProvider? imageUploadProvider;
  @override
  Widget build(BuildContext context) {

    return  Padding(padding: const EdgeInsets.all(8.0),
  child:DottedBorder(
    borderType: BorderType.RRect,
    dashPattern: const [6,7],
    child:   Column(
      children: [

        imageUploadProvider?.imageFile!=null
        ?Container(
          height: 500,
          width: 300,
          child: PhotoView(imageProvider:FileImage(imageUploadProvider!.imageFile!.absolute)),
        )
       : Center(
        child: Container( 
          color: Colors.amber,
          height: 500,
          width: 300,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Icon(Icons.image_outlined,size: 80,)
            ],
          ),
        ),
          ),
      ],
    )));
  }
}
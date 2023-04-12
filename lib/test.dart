import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late XFile image;
  final ImagePicker imagepicker = ImagePicker();

  uploadImage() async {
    var pickedImage = await imagepicker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      image = XFile(pickedImage.path);
    } else {
      print("hello");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container( 
          child: ElevatedButton(
              onPressed: uploadImage, child: Text("Upload image")),
        ),
        // image == null ? Text("Not Chosen Image") : Image.file(image!),
      ],
    );
  }
}

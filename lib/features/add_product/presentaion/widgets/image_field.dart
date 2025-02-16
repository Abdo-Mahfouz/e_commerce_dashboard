import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageField extends StatefulWidget {
  const ImageField({super.key, required this.onFileChanged});
  final ValueChanged<File?> onFileChanged;
  @override
  State<ImageField> createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  bool isLoading = false;
  File? fileImage;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: GestureDetector(
        onTap: () async {
          isLoading = true;
          setState(() {});
          try {
            await pickImage();
          } on Exception catch (e) {
            print(e.toString());
            isLoading = false;
            setState(() {});
          }
          isLoading = false;
          setState(() {});
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: const Color(0xFFF9FAFA),
                border: Border.all(
                  color: const Color(0xFFE6E9E9),
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: fileImage != null
                  ? Image.file(fileImage!)
                  : Icon(Icons.image_outlined, size: 180),
            ),
            Visibility(
              visible: fileImage != null,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    fileImage = null;
                    widget.onFileChanged(fileImage);
                  });
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    fileImage = File(image!.path);
    widget.onFileChanged(fileImage);
  }
}

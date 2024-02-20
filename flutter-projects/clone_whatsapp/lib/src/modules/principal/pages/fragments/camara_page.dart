import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CamaraPage extends StatefulWidget {
  const CamaraPage({
    super.key,
  });

  @override
  State<CamaraPage> createState() => _CamaraPageState();
}

class _CamaraPageState extends State<CamaraPage> {
  @override
  File? file;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 400,
            child: file != null
                ? Image.file(file!)
                : const Center(child: Text('No hay imagen')),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () async {
              final path = await _tomarFoto();

              if (path != null) {
                file = File(path);
                setState(() {});
              }

              print(path);
            },
            child: const Text('Tomar foto'),
          ),
        ],
      ),
    );
  }

  Future<String?> _tomarFoto() async {
    final imagePicker = ImagePicker();

    final XFile? image =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      return image.path;
    }

    return null;
  }
}

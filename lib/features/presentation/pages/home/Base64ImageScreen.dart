import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upqayt/generated/assets.dart';

class Base64ImageScreen extends StatefulWidget {
  const Base64ImageScreen({super.key});

  @override
  State<Base64ImageScreen> createState() => _Base64ImageScreenState();
}

class _Base64ImageScreenState extends State<Base64ImageScreen> {
  List _data = [];
  Widget buildBase64Image({required String base64ImageString}) {
    // Convert Base64 string to Uint8List
    Uint8List bytes = base64Decode(base64ImageString);

    // Display the image using Image.memory
    return Image.memory(
      bytes,
      fit: BoxFit.cover,
      width: 200,
      height: 200,
    );
  }

  Future<void> loadJsonData() async {
    // Load the JSON file from assets
    String jsonString = await rootBundle.loadString(Assets.mockDataMOCKDATA);
    // Decode JSON data into a list
    setState(() {
      _data = jsonDecode(jsonString);
    });
  }


  @override
  void initState() {
    super.initState();
    loadJsonData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _data.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          final item = _data[index];
          return buildBase64Image(base64ImageString: item['img_url']);
        },
      ),
    );
  }
}

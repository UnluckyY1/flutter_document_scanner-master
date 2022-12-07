import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_document_scanner/flutter_document_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _controller = DocumentScannerController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.teal,
      ),
      home: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: DocumentScanner(
                      controller: _controller,
                      generalStyles: const GeneralStyles(
                        hideDefaultBottomNavigation: true,
                        hideDefaultDialogs: true,
                        baseColor: Colors.white,
                      ),
                      takePhotoDocumentStyle: const TakePhotoDocumentStyle(
                          hideTakePhotoButton: true),
                      cropPhotoDocumentStyle:
                          const CropPhotoDocumentStyle(hideAppBarDefault: true),
                      editPhotoDocumentStyle: const EditPhotoDocumentStyle(),
                      onSave: (Uint8List imageBytes) {
                        // ? Bytes of the document/image already processed
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

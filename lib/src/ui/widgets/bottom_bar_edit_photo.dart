import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_document_scanner/flutter_document_scanner.dart';

class BottomBarEditPhoto extends StatelessWidget {
  final EditPhotoDocumentStyle editPhotoDocumentStyle;

  const BottomBarEditPhoto({
    Key? key,
    required this.editPhotoDocumentStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (editPhotoDocumentStyle.hideBottomBarDefault) return const SizedBox();

    return Positioned(
      bottom: MediaQuery.of(context).padding.bottom,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // * Natural
            TextButton(
              onPressed: () =>
                  context.read<DocumentScannerController>().applyFilter(
                        FilterType.natural,
                      ),
              child: const Text(
                "Natural",
              ),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
            ),

            // * Gray
            TextButton(
              onPressed: () =>
                  context.read<DocumentScannerController>().applyFilter(
                        FilterType.gray,
                      ),
              child: const Text(
                "GRAY",
              ),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
            ),

            // * ECO
            TextButton(
              onPressed: () =>
                  context.read<DocumentScannerController>().applyFilter(
                        FilterType.eco,
                      ),
              child: const Text(
                "ECO",
              ),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

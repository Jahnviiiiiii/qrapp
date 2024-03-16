import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';
class scannerpage extends StatefulWidget {
  const scannerpage({super.key});

  @override
  State<scannerpage> createState() => _scannerpageState();
}

class _scannerpageState extends State<scannerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Placeholder(),
      // MobileScanner(
      //   // fit: BoxFit.contain,
      //   onDetect: (capture) {
      //     final List<Barcode> barcodes = capture.barcodes;
      //     final Uint8List? image = capture.image;
      //     for (final barcode in barcodes) {
      //       debugPrint('Barcode found! ${barcode.rawValue}');
      //     }
      //   },
      // ),

    );
  }
}

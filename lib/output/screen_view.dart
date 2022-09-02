// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CameraScreenWidget extends StatefulWidget {
  const CameraScreenWidget({Key? key}) : super(key: key);

  @override
  State<CameraScreenWidget> createState() => _CameraScreenWidgetState();
}

class _CameraScreenWidgetState extends State<CameraScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: 320,
      height: 80,
      
   
      color: Colors.grey,
      
      );
    
  }
}

import 'package:flutter/material.dart';

class MyLibraryPage extends StatelessWidget {
  const MyLibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      alignment: Alignment.center,
      child: const Text('MyLibrary page'),
    );
  }
}
import 'package:flutter/material.dart';

class CreateSticker extends StatelessWidget {
  const CreateSticker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Create Sticker'))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Create Sticker'),
            ),
          ),
        ],
      ),
    );
  }
}

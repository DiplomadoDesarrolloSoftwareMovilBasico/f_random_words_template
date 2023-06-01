import 'package:flutter/material.dart';

class CoreWidget extends StatelessWidget {
  const CoreWidget(
      {Key? key,
      required this.enabled,
      required this.callback,
      required this.text})
      : super(key: key);
  final String text; // the word to be displayed and classified
  final bool enabled; // this tells if the buttons are enabled or not
  final Function(int)
      callback; // the function to be called when a button is pressed

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: Text(
          'Text goes here',
        ),
      ),
      Expanded(
        child: Row(
          children: [
            ElevatedButton(
                onPressed: null,
                child: const Text("Noun", style: TextStyle(fontSize: 26))),
            ElevatedButton(
              onPressed: null,
              child: const Text("Adjective", style: TextStyle(fontSize: 26)),
            )
          ],
        ),
      ),
    ]);
  }
}

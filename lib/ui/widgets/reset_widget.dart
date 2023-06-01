import 'package:flutter/material.dart';

class ResetWidget extends StatelessWidget {
  const ResetWidget({super.key, required this.callback});
  final Function()
      callback; // the function to be called when a button is pressed

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: () => null,
        icon: const Icon(
          Icons.refresh,
          color: Colors.blue,
        ),
        iconSize: 30.0,
      ),
    );
  }
}

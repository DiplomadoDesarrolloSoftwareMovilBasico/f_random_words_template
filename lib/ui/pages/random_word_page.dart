import 'package:flutter/material.dart';
import 'dart:async';
import 'package:loggy/loggy.dart';
import '../../domain/use_cases/random_word_use_case.dart';
import '../widgets/core_widget.dart';
import '../widgets/reset_widget.dart';
import '../widgets/score_widget.dart';

class RandomWordPage extends StatefulWidget {
  const RandomWordPage({Key? key}) : super(key: key);

  @override
  _RandomWordPageState createState() => _RandomWordPageState();
}

class _RandomWordPageState extends State<RandomWordPage> {
  int _score = 0;
  String text = "";
  bool _buttonEnable = true;
  int _actualOption = 0;

  @override
  void initState() {
    super.initState();
    setRandomWord();
  }

  void setRandomWord() {
    int option;
    String randomItem;
    (randomItem, option) = RandomWordUseCase.GetRandomWord();
    setState(() {
      _actualOption = option;
      _buttonEnable = true;
      text = randomItem;
    });
  }

  void startDelay() {
    logInfo("Starting Delay");
    //todo: start a 2 seconds timer to call setRandomWord
  }

  void _onPressed(int selection) {
    logInfo("I am here selection $selection with _actualOption $_actualOption");

    // to prevent double click
    setState(() {
      _buttonEnable = false;
      //todo:  update the score
    });
    //todo: depending on the selection, we will get a new random word or start the delay
    _actualOption == selection ? setRandomWord() : startDelay();
  }

  void _onReset() {
    setState(() {
      //todo: reset the score
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Words"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('include here the score widget'),
          Expanded(child: Text('include here the core widget')),
          const Text('include here the reset widget'),
        ],
      ),
    );
  }
}

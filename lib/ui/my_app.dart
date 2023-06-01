import 'package:flutter/material.dart';

import 'pages/random_word_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          //useMaterial3: true,
        ),
        title: "RandomWords",
        home: const RandomWordPage());
  }
}

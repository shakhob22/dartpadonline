import 'dart:io';

import 'package:dart_pad_widget/dart_pad_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}





class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DartPad(
        //height: MediaQuery.of(context).size.height,
        //width: MediaQuery.of(context).size.width,
        key: const Key("example1"),
        embeddingChoice: EmbeddingChoice.dart,
        darkMode: true,
        code: '''
          main() {
            print("Salom Dunyo!");
          }
          ''',
        nullSafety: true,
      ),
    );
  }
}

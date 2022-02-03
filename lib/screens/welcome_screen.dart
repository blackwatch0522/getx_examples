import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final name = Get.parameters["name"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("안녕하세요 $name")),
    );
  }
}

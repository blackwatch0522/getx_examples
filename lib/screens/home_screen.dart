import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: const Text("내 이름은 홍길동"),
              onPressed: () {
                Get.toNamed("/welcome", parameters: {"name": "홍길동"});
              },
            ),
            OutlinedButton(
              child: const Text("내 이름은 청길동"),
              onPressed: () {
                Get.toNamed("/welcome", parameters: {"name": "청길동"});
              },
            ),
          ],
        ),
      ),
    );
  }
}

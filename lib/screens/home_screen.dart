import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_examples/services/auth_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final authService = Get.find<AuthService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() =>
                Text("로그인된 유저 : ${authService.currentLoggedInUser.value}")),
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
            OutlinedButton(
              child: const Text("로그인 페이지"),
              onPressed: () {
                Get.toNamed("/login");
              },
            ),
          ],
        ),
      ),
    );
  }
}

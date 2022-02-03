import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_examples/services/auth_services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final authService = Get.find<AuthService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("로그인 페이지"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() =>
                Text("로그인된 유저 : ${authService.currentLoggedInUser.value}")),
            OutlinedButton(
              onPressed: () {
                authService.currentLoggedInUser.value = "홍길동";
              },
              child: const Text("로그인"),
            ),
            OutlinedButton(
              onPressed: () {
                authService.currentLoggedInUser.value = null;
              },
              child: const Text("로그아웃"),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:events_pay_pro/components/custom_appbar.dart';
import 'package:events_pay_pro/constant/constant.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.body,
      appBar: CustomAppBar(),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Constant.white),
              margin: const EdgeInsets.all(15),
              child: Center(
                child: Column(
                  children: const [
                    Text(
                      "Kayıt Ol",
                      style: TextStyle(color: Constant.text, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:events_pay_pro/components/custom_appbar.dart';
import 'package:events_pay_pro/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.body,
      appBar: CustomAppBar(),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Constant.white),
              margin: const EdgeInsets.all(15),
              child: Center(
                child: Column(
                  children: const [
                    Text(
                      "Giriş Yap",
                      style: TextStyle(color: Constant.text, fontSize: 18),
                    ),
                    Text("Telefon numaranızı girin ve devam edin")
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

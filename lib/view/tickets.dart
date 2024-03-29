import 'package:flutter/material.dart';

import '../components/custom_appbar.dart';
import '../components/drawer.dart';
import '../constant/constant.dart';

class TicketsView extends StatelessWidget {
  const TicketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constant.body,
        body: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Kayıtlı Bilet Bulunamadı.",
                  style: TextStyle(fontSize: 16),
                )
              ],
            )
          ],
        ));
  }
}

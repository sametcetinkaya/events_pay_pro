import 'package:flutter/material.dart';

class TicketSettingsView extends StatelessWidget {
  const TicketSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Bilet Ayarlar",
              style: TextStyle(fontSize: 16),
            )
          ],
        )
      ],
    );
  }
}

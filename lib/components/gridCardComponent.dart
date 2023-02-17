import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../model/event.dart';

// ignore: must_be_immutable
class GridCardComponent extends StatelessWidget {
  Event event;
  GridCardComponent({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
    
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Image.asset(event.image ,fit: BoxFit.cover, height: 100),
          Text(event.title , style: const TextStyle(color: Constant.dark , fontSize: 14)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.location_on),
              Text(event.location , style: const TextStyle(fontSize: 11, color: Constant.text)),
            ],
          ),
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             const Icon(Icons.calendar_month),
             Text(event.date , style: const TextStyle(fontSize: 11, color: Constant.text)),
           ],
            ),
          const SizedBox(
            height: 20,
          ),
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text(event.location , style: const TextStyle(fontSize: 14, color: Constant.dark)),
             const Icon(Icons.shopping_basket),
           ],
            )
        ],
      ),
    );
  }
}
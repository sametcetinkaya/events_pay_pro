// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../model/event.dart';

class EventCard extends StatelessWidget {
  Event event;
  EventCard({super.key, required this.event});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            event.image,
            fit: BoxFit.cover,
          )
        ],
      )
    );
  }
}
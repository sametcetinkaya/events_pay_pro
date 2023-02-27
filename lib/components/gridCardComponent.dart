// ignore: file_names
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
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: Image.asset(
              event.image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              event.title,
              style: const TextStyle(color: Constant.dark, fontSize: 14),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  size: 20,
                ),
                const SizedBox(width: 5),
                Flexible(
                    child: Text(
                  event.location,
                  style: const TextStyle(fontSize: 11, color: Constant.text),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ))
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const Icon(Icons.calendar_month, size: 20),
                const SizedBox(width: 5),
                Flexible(
                  child: Text(
                    event.date,
                    style: const TextStyle(fontSize: 11, color: Constant.text),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Constant.body,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${event.price} ₺',
                      style:
                          const TextStyle(fontSize: 14, color: Constant.dark),
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Icon(Icons.shopping_basket),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

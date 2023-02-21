import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../model/event.dart';

// ignore: must_be_immutable
class ListCardComponent extends StatelessWidget {
  Event event;
  ListCardComponent({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  event.image,
                  width: 125,
                  height: 105,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: 240,
                  child: Text(
                    event.title,
                    style: const TextStyle(
                        color: Constant.dark,
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis),
                    maxLines: 1,
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: 240,
                  child: Text(
                    event.location,
                    style: const TextStyle(color: Constant.text, fontSize: 11),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    width: 240,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${event.price} TL',
                            style: const TextStyle(
                                fontSize: 14,
                                color: Constant.dark,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          const Icon(Icons.shopping_basket),
                        ],
                      ),
                    ))
              ],
            )
          ],
        ));
  }
}

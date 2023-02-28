import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant/constant.dart';
import '../view/location.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Constant.dark,
      centerTitle: true,
      title: const Text(
        'Xbilet',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Constant.white,
            fontStyle: FontStyle.normal),
      ),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      actions: [
        IconButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LocationView())),
            icon: const Icon(Icons.location_on)),
      ],
      automaticallyImplyLeading: true,
    );
  }
}

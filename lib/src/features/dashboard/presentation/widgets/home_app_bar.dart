import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(),
      title: const Text('Hi Yousef !', style: Styles.fontMedium20),
      trailing: IconButton(
        icon: const Icon(Icons.notifications_outlined),
        onPressed: () {
          // Handle notification tap
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Topsection extends StatelessWidget {
  const Topsection({super.key, required this.Notifications_Onpressed});
  final VoidCallback Notifications_Onpressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      const Text(
        "Find your desire\n healt solution",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      ),
      const Spacer(
        flex: 7,
      ),
      IconButton(
          onPressed: Notifications_Onpressed,
          icon: const Icon(
            Icons.notifications_outlined,
            color: Colors.black,
            size: 35,
          )),
      const Spacer(
        flex: 1,
      )
    ]);
  }
}

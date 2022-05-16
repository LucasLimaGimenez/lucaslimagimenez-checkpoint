import 'package:flutter/material.dart';

class LucasCard extends StatelessWidget {
  final String? leftText;
  final String? rightText;

  LucasCard({required this.leftText, this.rightText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.amberAccent, width: 2),
      ),
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Text(leftText!),
          const Spacer(),
          Text(rightText!),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.yellow[400]),
        child: Center(
            child: Text(
          title,
          style: const TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
        )),
      ),
    );
  }
}

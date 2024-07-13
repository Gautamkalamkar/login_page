import 'package:flutter/material.dart';

class IdentityButton extends StatelessWidget {
  const IdentityButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.description});

  final IconData icon;
  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(color: Colors.grey)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.yellow[400],
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  icon,
                  color: Colors.black38,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Ubuntu'),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                        fontSize: 15,
                        fontFamily: 'Ubuntu',
                        color: Colors.black45),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

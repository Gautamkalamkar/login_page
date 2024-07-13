import 'package:flutter/material.dart';
import 'package:login_clone/widgets/button.dart';
import 'package:login_clone/widgets/identity_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 70, left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      gradient: RadialGradient(
                          colors: [Colors.yellow, Colors.yellowAccent],
                          center: Alignment.center),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/login_page_tick.png'),
                          fit: BoxFit.contain)),
                ),
              ),
              const SizedBox(height: 50),
              const Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Verify your identity',
                      softWrap: false,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Ubuntu'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Your identity helps you discover new people and opportunities',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Ubuntu',
                          color: Colors.black54,
                          fontSize: 15),
                    ),
                  ]),
              const SizedBox(height: 30),
              const IdentityButton(
                  icon: Icons.mail_outline_rounded,
                  title: 'Email',
                  description: 'Verify with your email'),
              const SizedBox(height: 30),
              const IdentityButton(
                  icon: Icons.phone,
                  title: 'Phone number',
                  description: 'Verify with your phone number'),
              const SizedBox(height: 50),
              const Row(
                children: [
                  Button(
                    title: 'Continue',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
